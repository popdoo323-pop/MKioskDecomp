# Converted from the disassembly of 0x024bb8f0 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_024bb8f0
Batch_024bb8f0:
    lha     r11,0(r4)
    lwz     r0,32(r3)
    cmplw   r11,r0
    li      r12,0
    bge-    L024bb910
    lwz     r9,40(r3)
    slwi    r12,r11,2
    lwzx    r12,r12,r9
L024bb910:
    lwz     r10,100(r12)
    lwz     r8,124(r10)
    mtctr   r8
    lha     r4,2(r4)
    mr      r3,r12
    bctr
