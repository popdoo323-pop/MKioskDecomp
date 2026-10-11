# Converted from the disassembly of 0x024d54a0 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_024d54a0
Batch_024d54a0:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r28,8(r1)
    stw     r30,16(r1)
    mr      r28,r3
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r4
    lwz     r3,628(r28)
    mr      r31,r5
    bl      ext_024804b4
    mr      r30,r3
    lwz     r3,632(r28)
    bl      ext_024804b4
    lfs     f13,0(r30)
    lfs     f0,0(r3)
    lfs     f12,4(r30)
    fmuls   f11,f13,f0
    lfs     f0,4(r3)
    fmuls   f12,f12,f0
    stfs    f11,160(r28)
    mr      r3,r28
    mr      r5,r31
    mr      r4,r29
    stfs    f12,164(r28)
    bl      ext_024cc9d4
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
