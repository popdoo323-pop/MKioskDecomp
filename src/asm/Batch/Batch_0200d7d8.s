# Converted from the disassembly of 0x0200d7d8 (192 bytes). Name is a placeholder.
    .text
    .globl Batch_0200d7d8
Batch_0200d7d8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r10,100(r3)
    lwz     r12,628(r10)
    mtctr   r12
    mr      r30,r3
    mr      r31,r4
    bctrl
    cmpwi   r3,0
    beq-    L0200d87c
    mr      r3,r30
    bl      ext_0200d350
    lwz     r11,100(r30)
    lwz     r0,436(r11)
    mtctr   r0
    mr      r3,r30
    li      r4,1
    bctrl
    lwz     r8,0(r31)
    lwz     r9,4(r30)
    cmplw   r9,r8
    lbz     r0,5(r31)
    bne-    L0200d860
    lbz     r10,9(r30)
    cmplw   r10,r0
    bne-    L0200d860
    lwz     r12,100(r30)
    lwz     r0,412(r12)
    mtctr   r0
    mr      r3,r30
    bctrl
L0200d860:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    li      r3,1
    blr
L0200d87c:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    li      r3,0
    blr
