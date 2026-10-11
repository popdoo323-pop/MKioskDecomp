# Converted from the disassembly of 0x0203b098 (124 bytes). Name is a placeholder.
    .text
    .globl Batch_0203b098
Batch_0203b098:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L0203b0c0
    li      r3,100
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0203b0fc
L0203b0c0:
    mr      r3,r31
    bl      ext_0203a2a4
    li      r12,-1
    li      r11,0
    lis     r0,4096
    stw     r12,96(r31)
    addic   r0,r0,18976
    stw     r11,92(r31)
    li      r3,144
    stw     r0,0(r31)
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0203b0f8
    bl      ext_0203fd8c
L0203b0f8:
    stw     r3,92(r31)
L0203b0fc:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
