# Converted from the disassembly of 0x020150ec (104 bytes). Name is a placeholder.
    .text
    .globl Batch_020150ec
Batch_020150ec:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    li      r31,0
    stw     r0,20(r1)
    bl      ext_020fd964
    lwz     r10,0(r3)
    lwz     r0,36(r10)
    mtctr   r0
    bctrl
    cmpwi   r3,0
    beq-    L0201513c
    bl      ext_020fe084
    lwz     r12,0(r3)
    lwz     r0,36(r12)
    mtctr   r0
    bctrl
    cmpwi   r3,0
    beq-    L0201513c
    li      r31,1
L0201513c:
    lwz     r0,20(r1)
    clrlwi  r3,r31,24
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
