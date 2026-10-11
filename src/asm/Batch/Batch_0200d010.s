# Converted from the disassembly of 0x0200d010 (52 bytes). Name is a placeholder.
    .text
    .globl Batch_0200d010
Batch_0200d010:
    lwz     r0,0(r3)
    cmplw   r4,r0
    li      r12,0
    bge-    L0200d02c
    lwz     r11,8(r3)
    slwi    r12,r4,2
    lwzx    r12,r12,r11
L0200d02c:
    lbz     r12,14(r12)
    extsb   r12,r12
    not     r0,r12
    addic   r12,r0,-1
    subfe   r3,r12,r0
    blr
