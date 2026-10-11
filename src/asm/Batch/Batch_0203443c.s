# Converted from the disassembly of 0x0203443c (224 bytes). Name is a placeholder.
    .text
    .globl Batch_0203443c
Batch_0203443c:
    mflr    r0
    lis     r12,4096
    stwu    r1,-16(r1)
    lfs     f11,16676(r12)
    stw     r31,12(r1)
    fcmpu   cr0,f1,f11
    mr      r31,r5
    stw     r0,20(r1)
    blt-    L0203447c
    lwz     r0,20(r1)
    lis     r12,4096
    lwz     r31,12(r1)
    mtlr    r0
    lfs     f1,16680(r12)
    addi    r1,r1,16
    blr
L0203447c:
    cmpwi   r31,0
    bne-    L02034488
    addi    r31,r3,1228
L02034488:
    cmpwi   r6,0
    beq-    L020344d8
    lbz     r0,1309(r3)
    cmpwi   r0,0
    beq-    L020344d8
    bl      ext_02933520
    lwz     r12,4(r31)
    lis     r11,4120
    lwz     r0,20(r1)
    lfs     f0,-12096(r11)
    lfs     f13,0(r12)
    lwz     r11,0(r31)
    fmuls   f12,f13,f0
    lwz     r31,12(r1)
    lfs     f10,0(r11)
    addi    r1,r1,16
    fdivs   f9,f12,f1
    mtlr    r0
    fadds   f1,f10,f9
    blr
L020344d8:
    lis     r12,4096
    lfs     f12,16684(r12)
    lwz     r12,4(r31)
    lis     r11,4096
    lfs     f0,0(r12)
    lfs     f13,16664(r11)
    fmuls   f12,f0,f12
    lwz     r11,0(r31)
    lwz     r31,12(r1)
    fsubs   f9,f13,f1
    lfs     f11,0(r11)
    lwz     r0,20(r1)
    fdivs   f10,f12,f9
    mtlr    r0
    addi    r1,r1,16
    fadds   f1,f11,f10
    blr
