# Converted from the disassembly of 0x024cddf4 (136 bytes). Name is a placeholder.
    .text
    .globl Batch_024cddf4
Batch_024cddf4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024cde20
    li      r3,172
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024cde60
L024cde20:
    mr      r3,r31
    bl      ext_0248473c
    lis     r0,4107
    li      r30,0
    addic   r0,r0,-19916
    stw     r30,92(r31)
    stw     r0,84(r31)
    lis     r11,4124
    stw     r30,88(r31)
    lwzu    r12,26336(r11)
    stw     r12,96(r31)
    lwz     r0,4(r11)
    addi    r3,r31,104
    stw     r0,100(r31)
    bl      ext_0248ab60
    stw     r30,168(r31)
L024cde60:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
