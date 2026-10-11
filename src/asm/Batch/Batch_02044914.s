# Converted from the disassembly of 0x02044914 (124 bytes). Name is a placeholder.
    .text
    .globl Batch_02044914
Batch_02044914:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    beq-    L02044978
    lwz     r3,4(r30)
    lis     r0,4096
    addic   r0,r0,22656
    cmpwi   r3,0
    stw     r0,0(r30)
    beq-    L02044968
    lwz     r10,8(r3)
    lwz     r0,12(r10)
    mtctr   r0
    li      r4,3
    bctrl
    li      r0,0
    stw     r0,4(r30)
L02044968:
    clrlwi. r11,r31,31
    beq-    L02044978
    mr      r3,r30
    bl      ext_026014bc
L02044978:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
