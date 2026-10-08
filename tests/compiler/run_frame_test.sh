#!/bin/sh
# Frame-alignment test for a candidate compiler. Run from the repo root in MSYS2 (or any shell with powerpc-eabi tools).
# Usage: sh tests/compiler/run_frame_test.sh /opt/devkitpro/devkitPPC/bin/powerpc-eabi-gcc
# Prints, for each optimisation level: total frames, frames that are 8 mod 16, and the share.
# Reference from the game (Turbo.rpx): 11,395 of 24,489 prologues are 8 mod 16 (46.5%).
CC=${1:-powerpc-eabi-gcc}
case "$CC" in
  */*) OBJDUMP=$(dirname "$CC")/$(basename "$CC" | sed 's/gcc$/objdump/') ;;
  *)   OBJDUMP=$(echo "$CC" | sed 's/gcc$/objdump/') ;;
esac
SRC=tests/compiler/frame_test_large.c
for O in O1 O2 O3 Os; do
  "$CC" -$O -c "$SRC" -o /tmp/ft_$O.o || { echo "compile failed at -$O"; exit 1; }
  "$OBJDUMP" -d /tmp/ft_$O.o | grep stwu | sed -E 's/.*r1,-([0-9]+)\(r1\).*/\1/' \
    | awk -v lvl=$O '{n++; if ($1 % 16 == 8) e++} END {printf "-%s: frames=%d  8-mod-16=%d  share=%.1f%%\n", lvl, n, e, (n ? 100*e/n : 0)}'
done
echo "--- link-register placement at -O2 (game: 97.6% late, 1.7% early):"
"$OBJDUMP" -d /tmp/ft_O2.o | awk '
function classify() { if (mpos > 0 && lpos > 0) { if (lpos - mpos <= 2) early++; else late++ } }
/^[0-9a-f]+ <.*>:$/ { classify(); mpos = -1; lpos = -1; n = 0; next }
/\t/ { n++; if (mpos < 0 && $0 ~ /mflr/) mpos = n; else if (mpos > 0 && lpos < 0 && $0 ~ /stw[ \t]+r0,/) lpos = n }
END { classify(); printf "LR early (saved within 2 instructions of mflr)=%d  late=%d\n", early, late }'
echo "--- prologue of saves_1 at -O2 (first 8 lines):"
"$OBJDUMP" -d /tmp/ft_O2.o | awk '/<saves_1>:/{p=1;c=0} p&&c<9{print;c++}'
echo "--- prologue of fp_1 at -O2 (first 8 lines):"
"$OBJDUMP" -d /tmp/ft_O2.o | awk '/<fp_1>:/{p=1;c=0} p&&c<9{print;c++}'
