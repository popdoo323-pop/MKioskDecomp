# Converted from the disassembly of 0x0200f178 (200 bytes). Name is a placeholder.
    .text
    .globl Batch_0200f178
Batch_0200f178:
    mflr    r0
    stwu    r1,-40(r1)
    stw     r31,36(r1)
    mr      r31,r4
    stw     r30,32(r1)
    stw     r29,28(r1)
    stw     r0,44(r1)
    lwz     r11,4(r31)
    mr      r30,r3
    lwz     r10,0(r31)
    lwz     r3,104(r30)
    stw     r10,12(r1)
    addi    r4,r1,12
    stw     r11,16(r1)
    bl      ext_0200b514
    cmpwi   r3,0
    beq-    L0200f1fc
    lis     r12,4119
    lwz     r12,-4780(r12)
    lwz     r3,104(r30)
    addi    r4,r1,12
    lwz     r29,24(r12)
    bl      ext_0200ac90
    addi    r4,r1,8
    stb     r3,8(r1)
    lwz     r3,164(r29)
    addi    r5,r1,12
    bl      ext_027b2960
    xori    r0,r3,1
    mr      r3,r29
    addi    r4,r1,12
    clrlwi  r5,r0,24
    bl      ext_027b69d4
L0200f1fc:
    lwz     r3,104(r30)
    li      r7,3
    lwz     r6,256(r3)
    stw     r7,20(r1)
    lwz     r0,28(r6)
    mtctr   r0
    mr      r4,r31
    addi    r5,r1,20
    bctrl
    lwz     r29,28(r1)
    lwz     r0,44(r1)
    lwz     r30,32(r1)
    mtlr    r0
    lwz     r31,36(r1)
    addi    r1,r1,40
    li      r3,1
    blr
