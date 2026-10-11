# Converted from the disassembly of 0x0203c4f4 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_0203c4f4
Batch_0203c4f4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    beq-    L0203c554
    lwz     r3,32(r30)
    cmpwi   r3,0
    beq-    L0203c53c
    lwz     r10,12(r3)
    lwz     r11,12(r10)
    mtctr   r11
    li      r4,3
    bctrl
    li      r0,0
    stw     r0,32(r30)
L0203c53c:
    addi    r3,r30,36
    bl      ext_0259b58c
    clrlwi. r0,r31,31
    beq-    L0203c554
    mr      r3,r30
    bl      ext_026014bc
L0203c554:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
