# Converted from the disassembly of 0x02044ac4 (512 bytes). Name is a placeholder.
    .text
    .globl Batch_02044ac4
Batch_02044ac4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L02044af0
    li      r3,120
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02044ca8
L02044af0:
    mr      r3,r31
    bl      ext_02630700
    lis     r10,4096
    li      r30,0
    addi    r10,r10,23040
    stw     r30,72(r31)
    stw     r10,0(r31)
    stw     r30,84(r31)
    stw     r30,68(r31)
    stw     r30,64(r31)
    stw     r30,76(r31)
    stw     r30,56(r31)
    stw     r30,52(r31)
    stw     r30,32(r31)
    stw     r30,28(r31)
    stw     r30,80(r31)
    stw     r30,36(r31)
    stw     r30,48(r31)
    stw     r30,60(r31)
    stw     r30,40(r31)
    addic.  r3,r31,88
    stw     r30,44(r31)
    bne-    L02044b5c
    li      r3,2
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02044b60
L02044b5c:
    sth     r30,0(r3)
L02044b60:
    addic.  r3,r31,90
    bne-    L02044b78
    li      r3,2
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02044b7c
L02044b78:
    sth     r30,0(r3)
L02044b7c:
    addic.  r3,r31,92
    bne-    L02044b94
    li      r3,2
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02044b98
L02044b94:
    sth     r30,0(r3)
L02044b98:
    li      r3,48
    bl      ext_0260128c
    cmpwi   r3,0
    mr      r9,r3
    beq-    L02044bb4
    bl      ext_02044570
    mr      r9,r3
L02044bb4:
    li      r3,48
    stw     r9,28(r31)
    bl      ext_0260128c
    cmpwi   r3,0
    mr      r10,r3
    beq-    L02044bd4
    bl      ext_02044570
    mr      r10,r3
L02044bd4:
    li      r3,60
    stw     r10,32(r31)
    bl      ext_0260128c
    cmpwi   r3,0
    mr      r12,r3
    beq-    L02044bf4
    bl      ext_02638650
    mr      r12,r3
L02044bf4:
    li      r3,40
    stw     r12,36(r31)
    bl      ext_0260128c
    cmpwi   r3,0
    mr      r0,r3
    beq-    L02044c14
    bl      ext_0263a548
    mr      r0,r3
L02044c14:
    li      r3,48
    stw     r0,40(r31)
    bl      ext_0260128c
    cmpwi   r3,0
    mr      r0,r3
    beq-    L02044c34
    bl      ext_02044570
    mr      r0,r3
L02044c34:
    li      r3,48
    stw     r0,44(r31)
    bl      ext_0260128c
    cmpwi   r3,0
    mr      r8,r3
    beq-    L02044c54
    bl      ext_02044570
    mr      r8,r3
L02044c54:
    li      r3,60
    stw     r8,48(r31)
    bl      ext_0260128c
    cmpwi   r3,0
    mr      r11,r3
    beq-    L02044c74
    bl      ext_02638650
    mr      r11,r3
L02044c74:
    li      r3,40
    stw     r11,52(r31)
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02044c8c
    bl      ext_0263a548
L02044c8c:
    li      r9,6
    addi    r11,r31,92
    li      r12,0
    mtctr   r9
    stw     r3,56(r31)
L02044ca0:
    stwu    r12,4(r11)
    bdnz+   L02044ca0
L02044ca8:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
