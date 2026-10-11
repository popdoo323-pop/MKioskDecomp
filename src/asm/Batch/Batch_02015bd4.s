# Converted from the disassembly of 0x02015bd4 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_02015bd4
Batch_02015bd4:
    lbz     r0,37(r3)
    cmpwi   r0,9
    beqlr-
    lbz     r12,64(r3)
    cmpwi   r12,9
    bne-    L02015bf8
    lbz     r0,39(r3)
    cmpwi   r0,0
    bnelr-
L02015bf8:
    li      r11,0
    li      r12,1
    stb     r11,64(r3)
    stb     r12,39(r3)
    blr
