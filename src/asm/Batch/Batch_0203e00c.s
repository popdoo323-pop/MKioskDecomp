# Converted from the disassembly of 0x0203e00c (284 bytes). Name is a placeholder.
    .text
    .globl Batch_0203e00c
Batch_0203e00c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r8,168(r31)
    cmpwi   r8,-1
    beq-    L0203e060
    lwz     r3,4(r31)
    bl      ext_0203b094
    lbz     r10,89(r3)
    cmpwi   r10,0
    bne-    L0203e060
    lbz     r11,222(r31)
    cmpwi   r11,0
    bne-    L0203e07c
    mr      r3,r31
    bl      ext_0203dd2c
    cmpwi   r3,0
    bne-    L0203e07c
L0203e060:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    li      r3,0
    blr
L0203e07c:
    lwz     r11,44(r31)
    lwz     r0,0(r11)
    cmpwi   r0,0
    beq-    L0203e094
    lwz     r3,0(r11)
    bl      ext_02587574
L0203e094:
    mr      r3,r31
    bl      ext_0203de00
    li      r8,1
    li      r0,0
    stb     r8,220(r31)
    mr      r3,r31
    stb     r0,222(r31)
    bl      ext_0203dfd0
    lis     r9,4120
    lwz     r7,144(r31)
    lfs     f0,-10588(r9)
    stfs    f0,24(r7)
    lwz     r3,40(r31)
    lwz     r12,0(r3)
    lwz     r0,20(r12)
    lwz     r4,168(r31)
    mtctr   r0
    bctrl
    mr.     r30,r3
    beq-    L0203e10c
    bl      ext_02041f68
    mr      r31,r3
    mr      r3,r30
    bl      ext_0205119c
    mr      r12,r3
    mr      r3,r31
    slwi    r31,r12,1
    bl      ext_02042680
    mr      r4,r31
    bl      ext_020395b4
L0203e10c:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    li      r3,1
    blr
