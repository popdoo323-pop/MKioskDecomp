# Converted from the disassembly of 0x02035d3c (76 bytes). Name is a placeholder.
    .text
    .globl Batch_02035d3c
Batch_02035d3c:
    lwz     r10,0(r5)
    lfs     f0,0(r10)
    lis     r11,4096
    fcmpu   cr0,f1,f0
    lfs     f13,16660(r11)
    ble-    L02035d80
    fsubs   f12,f1,f0
    lfs     f0,16(r5)
    lfs     f11,36(r4)
    lis     r12,4096
    fmuls   f12,f12,f0
    lfs     f0,16664(r12)
    fsubs   f13,f0,f11
    fmuls   f13,f12,f13
    fcmpu   cr0,f13,f0
    ble-    L02035d80
    fmr     f13,f0
L02035d80:
    stfs    f13,0(r6)
    blr
