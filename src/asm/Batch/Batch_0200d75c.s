# Converted from the disassembly of 0x0200d75c (124 bytes). Name is a placeholder.
    .text
    .globl Batch_0200d75c
Batch_0200d75c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r11,100(r3)
    lwz     r0,612(r11)
    mtctr   r0
    mr      r31,r3
    bctrl
    cmpwi   r3,0
    beq-    L0200d7c0
    mr      r3,r31
    bl      ext_0200d350
    lwz     r12,100(r31)
    lwz     r0,436(r12)
    mtctr   r0
    mr      r3,r31
    li      r4,1
    bctrl
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    li      r3,1
    blr
L0200d7c0:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    li      r3,0
    blr
