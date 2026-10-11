# Converted from the disassembly of 0x02033a1c (80 bytes). Name is a placeholder.
    .text
    .globl Batch_02033a1c
Batch_02033a1c:
    cmpwi   r4,0
    beqlr-
    lis     r12,4096
    lfs     f12,0(r4)
    lfs     f13,16660(r12)
    fcmpu   cr0,f12,f13
    beqlr-
    lwz     r11,8(r3)
    lfs     f0,0(r11)
    fcmpu   cr0,f0,f12
    beq-    L02033a64
    lis     r12,4096
    lfs     f0,16664(r12)
    fdivs   f12,f0,f12
    stfs    f12,20(r3)
    lfs     f12,0(r4)
    fmuls   f13,f12,f12
    stfs    f13,24(r3)
L02033a64:
    stw     r4,8(r3)
    blr
