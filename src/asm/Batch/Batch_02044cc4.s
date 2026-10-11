# Converted from the disassembly of 0x02044cc4 (352 bytes). Name is a placeholder.
    .text
    .globl Batch_02044cc4
Batch_02044cc4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    beq-    L02044e0c
    lwz     r3,28(r30)
    lis     r0,4096
    addic   r0,r0,23040
    cmpwi   r3,0
    stw     r0,0(r30)
    beq-    L02044d10
    lwz     r10,0(r3)
    lwz     r0,36(r10)
    mtctr   r0
    li      r4,3
    bctrl
L02044d10:
    lwz     r3,32(r30)
    cmpwi   r3,0
    beq-    L02044d30
    lwz     r11,0(r3)
    lwz     r12,36(r11)
    mtctr   r12
    li      r4,3
    bctrl
L02044d30:
    lwz     r3,44(r30)
    cmpwi   r3,0
    beq-    L02044d50
    lwz     r10,0(r3)
    lwz     r0,36(r10)
    mtctr   r0
    li      r4,3
    bctrl
L02044d50:
    lwz     r3,48(r30)
    cmpwi   r3,0
    beq-    L02044d70
    lwz     r12,0(r3)
    lwz     r11,36(r12)
    mtctr   r11
    li      r4,3
    bctrl
L02044d70:
    lwz     r3,36(r30)
    cmpwi   r3,0
    beq-    L02044d90
    lwz     r12,0(r3)
    lwz     r0,36(r12)
    mtctr   r0
    li      r4,3
    bctrl
L02044d90:
    lwz     r3,40(r30)
    cmpwi   r3,0
    beq-    L02044db0
    lwz     r10,0(r3)
    lwz     r11,36(r10)
    mtctr   r11
    li      r4,3
    bctrl
L02044db0:
    lwz     r3,52(r30)
    cmpwi   r3,0
    beq-    L02044dd0
    lwz     r12,0(r3)
    lwz     r0,36(r12)
    mtctr   r0
    li      r4,3
    bctrl
L02044dd0:
    lwz     r3,56(r30)
    cmpwi   r3,0
    beq-    L02044df0
    lwz     r10,0(r3)
    lwz     r11,36(r10)
    mtctr   r11
    li      r4,3
    bctrl
L02044df0:
    mr      r3,r30
    li      r4,0
    bl      ext_02630890
    clrlwi. r0,r31,31
    beq-    L02044e0c
    mr      r3,r30
    bl      ext_026014bc
L02044e0c:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
