# Converted from the disassembly of 0x02042a54 (172 bytes). Name is a placeholder.
    .text
    .globl Batch_02042a54
Batch_02042a54:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r4
    stw     r0,20(r1)
    lwz     r0,0(r31)
    addi    r4,r1,8
    mr      r10,r3
    stw     r0,8(r1)
    bl      ext_02042914
    cmpwi   r3,0
    bne-    L02042aec
    lwz     r9,308(r10)
    li      r12,1
    stw     r9,312(r10)
    lwz     r0,0(r31)
    stb     r12,337(r10)
    stw     r0,308(r10)
    lwz     r8,0(r31)
    cmpwi   r8,22
    beq-    L02042ad4
    cmpwi   r8,105
    beq-    L02042ad4
    cmpwi   r8,23
    beq-    L02042ad4
    cmpwi   r8,46
    beq-    L02042ad4
    mr      r3,r10
    bl      ext_020428ec
    li      r4,30
    bl      ext_0203c9d8
    lwz     r8,0(r31)
L02042ad4:
    cmpwi   r8,2
    beq-    L02042aec
    lis     r3,4096
    li      r4,60
    addi    r3,r3,21692
    bl      ext_020460c0
L02042aec:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
