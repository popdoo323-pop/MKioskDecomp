# Bird method at 0x021fe678 (44 bytes). Sets the flag byte at +247 to 1, clears the halfword at +118 except its bits
# 16..27 are kept, clears the flag bytes at +245, +246 and +272 and the word at +248. Written from the disassembly of the
# original bytes. Name is a placeholder.
    .text
    .globl Bird_Reset_021fe678
Bird_Reset_021fe678:
    li      r12, 0x1
    lhz     r0, 118(r3)
    li      r10, 0x0
    stb     r12, 247(r3)
    rlwinm. r11, r0, 0, 16, 27
    stb     r10, 245(r3)
    sth     r11, 118(r3)
    stw     r10, 248(r3)
    stb     r10, 246(r3)
    stb     r10, 272(r3)
    blr
