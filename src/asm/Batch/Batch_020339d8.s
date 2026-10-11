# Converted from the disassembly of 0x020339d8 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_020339d8
Batch_020339d8:
    cmpwi   r4,0
    beqlr-
    lis     r12,4096
    lfs     f12,0(r4)
    lfs     f13,16660(r12)
    fcmpu   cr0,f12,f13
    beqlr-
    lwz     r12,4(r3)
    lfs     f0,0(r12)
    fcmpu   cr0,f0,f12
    beq-    L02033a14
    lis     r11,4096
    lfs     f0,16664(r11)
    fdivs   f12,f0,f12
    stfs    f12,16(r3)
L02033a14:
    stw     r4,4(r3)
    blr
