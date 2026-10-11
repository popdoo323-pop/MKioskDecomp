# Converted from the disassembly of 0x0203f6e8 (300 bytes). Name is a placeholder.
    .text
    .globl Batch_0203f6e8
Batch_0203f6e8:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r31,r5
    mr      r30,r4
    stw     r29,12(r1)
    cmpwi   r6,0
    stw     r0,28(r1)
    mr      r29,r3
    beq-    L0203f7f8
    lis     r11,4117
    lwz     r11,1072(r11)
    cmpwi   r11,5
    beq-    L0203f7f8
    lwz     r12,0(r30)
    cmplwi  r12,5
    beq-    L0203f764
    cmplwi  r12,7
    beq-    L0203f7c4
    cmplwi  r12,8
    beq-    L0203f798
    cmplwi  r12,12
    beq-    L0203f7d4
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L0203f764:
    lis     r11,4096
    lis     r10,4096
    lfs     f0,19716(r11)
    lfs     f13,19720(r10)
    stfs    f0,264(r29)
    stfs    f13,268(r29)
    lwz     r0,0(r30)
    addi    r4,r1,8
    mr      r5,r31
    mr      r3,r29
    stw     r0,8(r1)
    bl      ext_0203d500
    b       L0203f7f8
L0203f798:
    cmplwi  r31,4
    addi    r12,r29,92
    bge-    L0203f7ac
    mulli   r0,r31,12
    add     r12,r12,r0
L0203f7ac:
    lwz     r0,4(r12)
    cmpwi   r0,7
    bne-    L0203f7c4
    lis     r3,4096
    addi    r3,r3,19724
    bl      ext_02045d30
L0203f7c4:
    lwz     r11,248(r29)
    cmpwi   r11,1
    ble-    L0203f7e0
    b       L0203f7f8
L0203f7d4:
    lwz     r12,248(r29)
    cmpwi   r12,1
    bne-    L0203f7f8
L0203f7e0:
    lwz     r0,0(r30)
    mr      r3,r29
    mr      r5,r31
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_0203d500
L0203f7f8:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
