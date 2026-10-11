# Converted from the disassembly of 0x0200cab8 (156 bytes). Name is a placeholder.
    .text
    .globl Batch_0200cab8
Batch_0200cab8:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    mr      r31,r4
    stw     r0,28(r1)
    lwz     r10,0(r31)
    lwz     r0,4(r31)
    stw     r10,8(r1)
    addi    r4,r1,8
    stw     r0,12(r1)
    bl      ext_0200b2e4
    cmpwi   r3,0
    beq-    L0200caf4
    li      r8,2
    stw     r8,0(r3)
L0200caf4:
    lis     r12,4119
    lwz     r12,-4780(r12)
    lwz     r3,16(r12)
    lwz     r10,0(r31)
    lwz     r0,4(r3)
    lbz     r12,4(r31)
    cmplw   r10,r0
    lbz     r9,5(r31)
    bne-    L0200cb40
    lbz     r10,8(r3)
    cmplw   r12,r10
    bne-    L0200cb40
    lbz     r0,9(r3)
    cmplw   r9,r0
    bne-    L0200cb40
    lwz     r12,100(r3)
    lwz     r8,412(r12)
    mtctr   r8
    bctrl
L0200cb40:
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
