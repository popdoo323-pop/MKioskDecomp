# Converted from the disassembly of 0x0203ad80 (216 bytes). Name is a placeholder.
    .text
    .globl Batch_0203ad80
Batch_0203ad80:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lbz     r9,84(r31)
    cmpwi   r9,0
    bne-    L0203ae44
    lwz     r7,72(r31)
    lwz     r10,68(r31)
    cmpw    r7,r10
    lwz     r3,48(r31)
    bge-    L0203adbc
    addi    r11,r7,1
    stw     r11,72(r31)
L0203adbc:
    bl      ext_02046920
    lwz     r12,0(r31)
    lwz     r0,196(r12)
    mtctr   r0
    mr      r3,r31
    bctrl
    lwz     r3,44(r31)
    lwz     r11,0(r3)
    cmpwi   r11,0
    beq-    L0203ae44
    lwz     r8,48(r31)
    lbz     r0,16(r8)
    cmpwi   r0,0
    li      r4,0
    beq-    L0203ae34
    lfs     f12,0(r8)
    lfs     f0,24(r8)
    lfs     f13,28(r8)
    fmadds  f12,f12,f0,f13
    fmuls   f1,f1,f12
    bl      ext_0262ea48
    lwz     r12,48(r31)
    lfs     f13,0(r12)
    lfs     f0,32(r12)
    fmuls   f12,f13,f0
    lfs     f13,76(r31)
    fmuls   f1,f13,f12
    lwz     r3,44(r31)
    bl      ext_0262ea68
    b       L0203ae44
L0203ae34:
    bl      ext_0262ea48
    lwz     r3,44(r31)
    lfs     f1,76(r31)
    bl      ext_0262ea68
L0203ae44:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
