# Converted from the disassembly of 0x02035c48 (244 bytes). Name is a placeholder.
    .text
    .globl Batch_02035c48
Batch_02035c48:
    lis     r12,4096
    stwu    r1,-24(r1)
    lfs     f0,16668(r12)
    lis     r12,4096
    lbz     r11,41(r4)
    lfd     f10,16712(r12)
    lis     r0,17200
    stw     r11,12(r1)
    lis     r12,4096
    stw     r0,8(r1)
    lfd     f11,8(r1)
    fcmpu   cr0,f3,f0
    lfs     f13,16664(r12)
    fsub    f0,f11,f10
    fmr     f7,f13
    frsp    f0,f0
    bge-    L02035d30
    lis     r12,4096
    lfs     f10,16720(r12)
    fcmpu   cr0,f3,f10
    ble-    L02035d30
    lis     r12,4120
    lfs     f11,-12032(r12)
    fcmpu   cr0,f1,f11
    bgt-    L02035cb4
    stfs    f13,0(r5)
    b       L02035d34
L02035cb4:
    lis     r11,4120
    lis     r12,4120
    lfs     f9,-12040(r11)
    lfs     f8,-12036(r12)
    fmuls   f10,f9,f3
    fcmpu   cr0,f8,f13
    fmuls   f7,f10,f0
    beq-    L02035ce8
    lis     r11,4096
    lfs     f12,16660(r11)
    fcmpu   cr0,f7,f12
    bge-    L02035ce8
    fmuls   f7,f7,f8
L02035ce8:
    lis     r11,4120
    fsubs   f12,f1,f11
    lfs     f11,-12028(r11)
    fcmpu   cr0,f12,f11
    bge-    L02035d04
    fdivs   f12,f12,f11
    fmuls   f7,f7,f12
L02035d04:
    lis     r11,4120
    fadds   f7,f13,f7
    lfs     f0,-12044(r11)
    fcmpu   cr0,f7,f0
    ble-    L02035d20
    fmr     f7,f0
    b       L02035d30
L02035d20:
    lis     r11,4120
    lfs     f12,-12048(r11)
    fsubs   f9,f7,f12
    fsel    f7,f9,f7,f12
L02035d30:
    stfs    f7,0(r5)
L02035d34:
    addi    r1,r1,24
    blr
