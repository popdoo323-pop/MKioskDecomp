# Converted from the disassembly of 0x0200d350 (148 bytes). Name is a placeholder.
    .text
    .globl Batch_0200d350
Batch_0200d350:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,104(r31)
    bl      ext_0200b938
    lwz     r3,104(r31)
    addi    r4,r31,16
    bl      ext_0200ac90
    stb     r3,24(r31)
    lwz     r3,104(r31)
    addi    r4,r31,4
    bl      ext_0200b2e4
    cmpwi   r3,0
    beq-    L0200d3a0
    lwz     r3,104(r31)
    addi    r4,r31,4
    bl      ext_0200ac90
    stb     r3,12(r31)
L0200d3a0:
    lis     r12,4119
    lwz     r12,-4780(r12)
    lwz     r8,24(r12)
    lwz     r10,164(r8)
    lwz     r9,100(r31)
    lwz     r7,1160(r10)
    stw     r7,28(r31)
    lwz     r0,436(r9)
    mtctr   r0
    mr      r3,r31
    li      r4,0
    bctrl
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
