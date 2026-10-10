#!/bin/sh
# Analyse a compiled PowerPC object for the two compiler checks. Works on any PowerPC ELF, whatever built it.
# Usage: sh tests/compiler/analyze_object.sh OBJECT.o [path-to-powerpc-objdump]
# Prints: total prologues, frames that are 8 mod 16, and where the link register is saved (early or late).
# Game reference (Turbo.rpx): 46.5% of frames are 8 mod 16; link register saved late in 97.6% of prologues.
OBJ=${1:?usage: analyze_object.sh OBJECT.o [objdump]}
OBJDUMP=${2:-powerpc-eabi-objdump}
# Stop with a clear message when the object is missing (for example, when the compiler failed). Never print zeros for it.
if [ ! -f "$OBJ" ]; then echo "object not found: $OBJ (did the compile step succeed?)" >&2; exit 2; fi
"$OBJDUMP" -d "$OBJ" | awk '
function classify() { if (mpos > 0 && lpos > 0) { if (lpos - mpos <= 2) early++; else late++ } else if (mpos > 0) none++ }
/^[0-9a-f]+ <.*>:$/ { classify(); mpos = -1; lpos = -1; n = 0; next }
/\t/ {
  n++
  if ($0 ~ /stwu[ \t]+r1,-[0-9]+\(r1\)/) { match($0, /-[0-9]+\(r1\)/); f = substr($0, RSTART + 1, RLENGTH - 5) + 0; frames++; if (f % 16 == 8) e8++ }
  if (mpos < 0 && $0 ~ /mflr/) mpos = n
  else if (mpos > 0 && lpos < 0 && $0 ~ /stw[ \t]+r0,/) lpos = n
}
END { classify()
  printf "frames=%d  8-mod-16=%d  share=%.1f%%\n", frames, e8, (frames ? 100 * e8 / frames : 0)
  printf "link register: early=%d  late=%d  not-found=%d\n", early, late, none }'
