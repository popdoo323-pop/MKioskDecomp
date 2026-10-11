# Converted from the disassembly of 0x024b5120 (216 bytes). Name is a placeholder.
    .text
    .globl Batch_024b5120
Batch_024b5120:
    stwu    r1,-32(r1)
    mflr    r0
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    lis     r12,4107
    stfs    f31,24(r1)
    fmr     f31,f1
    lfs     f13,-32244(r12)
    fcmpu   cr0,f31,f13
    stw     r31,12(r1)
    stw     r0,36(r1)
    mr      r31,r3
    bge-    L024b5190
    fmr     f31,f13
    lwz     r11,0(r31)
    fmr     f1,f31
    lwz     r3,144(r11)
    li      r4,0
    bl      ext_027413e8
    lis     r12,4122
    lfs     f13,-25272(r12)
    lis     r12,4122
    lfs     f0,-25268(r12)
    fsubs   f12,f0,f13
    fmadds  f1,f12,f31,f13
    lwz     r3,56(r31)
    bl      ext_024b5118
    b       L024b51d8
L024b5190:
    lis     r11,4107
    lfs     f12,-32228(r11)
    fcmpu   cr0,f31,f12
    ble-    L024b51a4
    fmr     f31,f12
L024b51a4:
    lwz     r11,0(r31)
    fmr     f1,f31
    lwz     r3,144(r11)
    li      r4,0
    bl      ext_027413e8
    lis     r12,4122
    lfs     f13,-25272(r12)
    lis     r12,4122
    lfs     f0,-25268(r12)
    fsubs   f12,f0,f13
    fmadds  f1,f12,f31,f13
    lwz     r3,56(r31)
    bl      ext_024b5118
L024b51d8:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
