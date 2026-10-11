# Converted from the disassembly of 0x020423d0 (296 bytes). Name is a placeholder.
    .text
    .globl Batch_020423d0
Batch_020423d0:
    mflr    r0
    stwu    r1,-280(r1)
    stw     r31,276(r1)
    mr      r31,r3
    addi    r3,r1,16
    li      r9,2
    stw     r0,284(r1)
    lis     r0,516
    stw     r9,8(r1)
    addic   r0,r0,16400
    addi    r4,r1,8
    stw     r0,12(r1)
    bl      ext_026102e4
    li      r9,8
    lwz     r0,104(r1)
    mtctr   r9
    lwz     r10,420(r31)
    mulli   r12,r0,20
    stw     r10,112(r1)
    li      r0,0
    stw     r31,108(r1)
    addi    r8,r1,140
    add     r12,r1,r12
    addi    r9,r1,12
    stw     r0,28(r12)
L02042434:
    lwz     r10,4(r9)
    stw     r10,4(r8)
    lwz     r11,8(r9)
    stw     r11,8(r8)
    lwz     r12,12(r9)
    stw     r12,12(r8)
    lwzu    r0,16(r9)
    stwu    r0,16(r8)
    bdnz+   L02042434
    lis     r8,611
    lwz     r3,92(r31)
    addi    r8,r8,-9180
    addi    r4,r1,144
    stw     r8,268(r1)
    bl      ext_02611774
    lis     r12,4119
    lwzu    r9,2740(r12)
    lis     r4,4119
    cmpwi   r9,0
    addi    r4,r4,5788
    bne-    L0204249c
    lis     r11,4096
    li      r10,1
    addi    r11,r11,20652
    stw     r10,0(r12)
    stw     r11,0(r4)
L0204249c:
    cmpwi   r3,0
    beq-    L020424b4
    lwz     r12,112(r3)
    lwz     r0,12(r12)
    mtctr   r0
    bctrl
L020424b4:
    lis     r31,4117
    lwz     r31,9960(r31)
    lwz     r11,112(r31)
    lwz     r0,140(r11)
    mtctr   r0
    mr      r3,r31
    bctrl
    lwz     r8,112(r31)
    lwz     r10,148(r8)
    mtctr   r10
    mr      r3,r31
    bctrl
    lwz     r0,284(r1)
    lwz     r31,276(r1)
    mtlr    r0
    addi    r1,r1,280
    blr
