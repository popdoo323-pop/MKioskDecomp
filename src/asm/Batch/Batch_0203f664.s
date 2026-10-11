# Converted from the disassembly of 0x0203f664 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_0203f664
Batch_0203f664:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r4
    stw     r30,8(r1)
    mr      r30,r3
    mr      r3,r31
    stw     r0,20(r1)
    bl      ext_0262ea78
    cmpwi   r3,0
    beq-    L0203f6d0
    lwz     r11,0(r31)
    lwz     r0,252(r11)
    cmpwi   r0,0
    beq-    L0203f6d0
    cmpwi   r11,0
    lfs     f13,164(r30)
    bne-    L0203f6c0
    li      r12,0
    lfs     f0,32(r12)
    fcmpu   cr0,f0,f13
    ble-    L0203f6d0
    b       L0203f6cc
L0203f6c0:
    lfs     f0,76(r11)
    fcmpu   cr0,f0,f13
    ble-    L0203f6d0
L0203f6cc:
    stfs    f0,164(r30)
L0203f6d0:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
