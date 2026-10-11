# Converted from the disassembly of 0x0203ace4 (156 bytes). Name is a placeholder.
    .text
    .globl Batch_0203ace4
Batch_0203ace4:
    mflr    r0
    stwu    r1,-40(r1)
    stfd    f31,24(r1)
    ps_merge10 f31,f31,f31
    stw     r31,20(r1)
    stw     r29,12(r1)
    mr      r31,r3
    stfs    f31,32(r1)
    stw     r30,16(r1)
    stw     r0,44(r1)
    mr      r29,r4
    lwz     r3,44(r31)
    fmr     f31,f1
    mr      r30,r5
    bl      ext_0262ea78
    cmpwi   r3,0
    beq-    L0203ad58
    lwz     r4,44(r31)
    addi    r3,r1,8
    bl      ext_025a136c
    lwz     r3,8(r1)
    cmpwi   r3,0
    beq-    L0203ad50
    fmr     f1,f31
    mr      r5,r30
    mr      r4,r29
    bl      ext_0259e420
L0203ad50:
    addi    r3,r1,8
    bl      ext_025a1488
L0203ad58:
    lwz     r29,12(r1)
    lfs     f31,32(r1)
    lwz     r30,16(r1)
    lfd     f31,24(r1)
    lwz     r31,20(r1)
    isync
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
