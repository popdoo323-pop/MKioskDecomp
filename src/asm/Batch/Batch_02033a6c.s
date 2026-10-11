# Converted from the disassembly of 0x02033a6c (108 bytes). Name is a placeholder.
    .text
    .globl Batch_02033a6c
Batch_02033a6c:
    lis     r12,4096
    lfs     f0,16660(r12)
    lwz     r12,0(r3)
    lfs     f12,0(r12)
    lis     r11,4096
    lwz     r12,4(r3)
    fcmpu   cr0,f12,f0
    lfs     f13,16664(r11)
    beq-    L02033a98
    fdivs   f12,f13,f12
    stfs    f12,12(r3)
L02033a98:
    lfs     f12,0(r12)
    fcmpu   cr0,f12,f0
    lwz     r11,8(r3)
    beq-    L02033ab0
    fdivs   f12,f13,f12
    stfs    f12,16(r3)
L02033ab0:
    lfs     f12,0(r11)
    fcmpu   cr0,f12,f0
    beqlr-
    fdivs   f13,f13,f12
    lwz     r11,8(r3)
    stfs    f13,20(r3)
    lfs     f12,0(r11)
    fmuls   f0,f12,f12
    stfs    f0,24(r3)
    blr
