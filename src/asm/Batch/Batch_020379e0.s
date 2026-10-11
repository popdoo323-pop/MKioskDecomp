# Converted from the disassembly of 0x020379e0 (640 bytes). Name is a placeholder.
    .text
    .globl Batch_020379e0
Batch_020379e0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    bne-    L02037a10
    li      r3,44
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02037c44
L02037a10:
    li      r0,0
    stw     r0,0(r31)
    stw     r0,28(r31)
    stw     r0,20(r31)
    stw     r0,36(r31)
    stw     r0,32(r31)
    li      r3,464
    stw     r0,4(r31)
    stw     r0,16(r31)
    li      r5,4
    stw     r0,24(r31)
    stw     r0,8(r31)
    mr      r4,r30
    stw     r0,12(r31)
    bl      ext_026015cc
    cmpwi   r3,0
    mr      r10,r3
    beq-    L02037a60
    bl      ext_02039c84
    mr      r10,r3
L02037a60:
    li      r5,4
    li      r3,552
    mr      r4,r30
    stw     r10,0(r31)
    bl      ext_026015cc
    cmpwi   r3,0
    mr      r11,r3
    beq-    L02037a88
    bl      ext_020380b8
    mr      r11,r3
L02037a88:
    li      r5,4
    li      r3,20
    mr      r4,r30
    stw     r11,4(r31)
    bl      ext_026015cc
    cmpwi   r3,0
    mr      r12,r3
    beq-    L02037ab0
    bl      ext_02632ca8
    mr      r12,r3
L02037ab0:
    li      r5,4
    li      r3,68
    mr      r4,r30
    stw     r12,8(r31)
    bl      ext_026015cc
    mr.     r0,r3
    beq-    L02037ad8
    mr      r3,r0
    bl      ext_0203985c
    mr      r0,r3
L02037ad8:
    li      r5,4
    li      r3,1312
    mr      r4,r30
    stw     r0,12(r31)
    bl      ext_026015cc
    cmpwi   r3,0
    mr      r9,r3
    beq-    L02037b04
    li      r4,0
    bl      ext_02033d04
    mr      r9,r3
L02037b04:
    li      r5,4
    li      r3,120
    mr      r4,r30
    stw     r9,16(r31)
    bl      ext_026015cc
    cmpwi   r3,0
    mr      r10,r3
    beq-    L02037b2c
    bl      ext_02044ac4
    mr      r10,r3
L02037b2c:
    li      r5,4
    li      r3,24
    mr      r4,r30
    stw     r10,28(r31)
    bl      ext_026015cc
    cmpwi   r3,0
    mr      r0,r3
    beq-    L02037b54
    bl      ext_02054c90
    mr      r0,r3
L02037b54:
    mr      r3,r30
    stw     r0,32(r31)
    bl      ext_0205426c
    mr      r4,r30
    stw     r3,36(r31)
    li      r3,120
    li      r5,4
    bl      ext_026015cc
    cmpwi   r3,0
    beq-    L02037bb0
    lwz     r4,4(r31)
    cmpwi   r4,0
    beq-    L02037b8c
    addi    r4,r4,4
L02037b8c:
    bl      ext_020323dc
    stw     r3,24(r31)
    li      r3,52
    mr      r4,r30
    li      r5,4
    bl      ext_026015cc
    cmpwi   r3,0
    beq-    L02037c04
    b       L02037bd0
L02037bb0:
    li      r11,0
    li      r5,4
    li      r3,52
    mr      r4,r30
    stw     r11,24(r31)
    bl      ext_026015cc
    cmpwi   r3,0
    beq-    L02037c04
L02037bd0:
    lwz     r4,4(r31)
    cmpwi   r4,0
    beq-    L02037be0
    addi    r4,r4,4
L02037be0:
    bl      ext_0203c3cc
    stw     r3,20(r31)
    li      r3,68
    mr      r4,r30
    li      r5,4
    bl      ext_026015cc
    cmpwi   r3,0
    beq-    L02037c28
    b       L02037c24
L02037c04:
    li      r9,0
    li      r5,4
    li      r3,68
    mr      r4,r30
    stw     r9,20(r31)
    bl      ext_026015cc
    cmpwi   r3,0
    beq-    L02037c28
L02037c24:
    bl      ext_0205d950
L02037c28:
    lwz     r12,36(r31)
    cmpwi   r12,0
    stw     r3,40(r31)
    beq-    L02037c3c
    addi    r12,r12,44
L02037c3c:
    stw     r12,44(r3)
    bl      ext_02041f68
L02037c44:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
