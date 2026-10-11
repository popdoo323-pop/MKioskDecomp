# Converted from the disassembly of 0x020391e0 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_020391e0
Batch_020391e0:
    mflr    r0
    stwu    r1,-40(r1)
    stw     r30,16(r1)
    li      r30,0
    stfd    f31,24(r1)
    lis     r11,4096
    stw     r28,8(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    ps_merge10 f31,f31,f31
    stw     r0,44(r1)
    mr      r28,r4
    stfs    f31,32(r1)
    mr      r31,r3
    lfs     f31,17160(r11)
    li      r29,14
L02039220:
    lwz     r12,456(r31)
    fmr     f1,f31
    mr      r4,r28
    add     r3,r12,r30
    bl      ext_0262efe0
    addic.  r29,r29,-1
    addi    r30,r30,24
    bne+    L02039220
    lwz     r28,8(r1)
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
