# Converted from the disassembly of 0x024b6f08 (76 bytes). Name is a placeholder.
    .text
    .globl Batch_024b6f08
Batch_024b6f08:
    mr      r7,r3
    lwz     r9,0(r7)
    lbz     r11,1058(r7)
    lwz     r10,32(r9)
    extsb   r11,r11
    cmplw   r11,r10
    li      r3,0
    bge-    L024b6f34
    lwz     r0,40(r9)
    slwi    r12,r11,2
    lwzx    r3,r12,r0
L024b6f34:
    lwz     r6,100(r3)
    lwz     r8,284(r6)
    mtctr   r8
    lbz     r5,1059(r7)
    mr      r6,r4
    extsb   r5,r5
    lha     r4,1056(r7)
    bctr
