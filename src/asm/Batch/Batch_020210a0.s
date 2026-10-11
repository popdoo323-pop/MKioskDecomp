# Converted from the disassembly of 0x020210a0 (200 bytes). Name is a placeholder.
    .text
    .globl Batch_020210a0
Batch_020210a0:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r30,24(r1)
    stw     r31,28(r1)
    mr      r31,r4
    mr      r30,r5
    stw     r0,36(r1)
    bl      ext_020fe070
    mr      r4,r3
    addi    r3,r1,16
    bl      ext_0254a2ec
    addi    r3,r1,8
    bl      ext_0254a2ac
    lis     r5,4096
    addi    r4,r1,8
    addi    r3,r1,16
    addi    r5,r5,10400
    bl      ext_0254a65c
    li      r3,52
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L020210fc
    bl      ext_020fc128
L020210fc:
    stw     r3,0(r31)
    li      r9,2
    stw     r9,44(r3)
    lwz     r3,0(r31)
    lwz     r10,0(r3)
    lwz     r0,20(r10)
    mtctr   r0
    addi    r4,r1,8
    bctrl
    lwz     r12,0(r31)
    li      r4,0
    stb     r30,48(r12)
    lwz     r3,0(r31)
    li      r5,1
    bl      ext_020249b0
    cmpwi   r30,0
    beq-    L02021150
    bl      ext_020fe440
    mr      r4,r3
    lwz     r3,0(r31)
    bl      ext_020fe878
L02021150:
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
