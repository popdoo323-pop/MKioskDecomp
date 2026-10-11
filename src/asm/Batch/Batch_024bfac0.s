# Converted from the disassembly of 0x024bfac0 (52 bytes). Name is a placeholder.
    .text
    .globl Batch_024bfac0
Batch_024bfac0:
    lwz     r11,0(r4)
    cmpwi   r11,2
    bne-    L024bfadc
    lwz     r4,88(r3)
    li      r5,1
    stb     r5,296(r3)
    b       ext_02480664
L024bfadc:
    cmpwi   r11,3
    bnelr-
    lwz     r4,92(r3)
    li      r5,1
    stb     r5,297(r3)
    b       ext_02480664
