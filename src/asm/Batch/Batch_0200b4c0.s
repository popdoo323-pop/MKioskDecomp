# Converted from the disassembly of 0x0200b4c0 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b4c0
Batch_0200b4c0:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lbz     r11,0(r4)
    extsb   r11,r11
    cmpwi   r11,-1
    bne-    L0200b4f0
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    li      r3,0
    blr
L0200b4f0:
    bl      ext_0200ae34
    lwz     r12,0(r3)
    xori    r0,r12,3
    cntlzw  r0,r0
    srwi    r3,r0,5
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
