# Converted from the disassembly of 0x024d0c20 (168 bytes). Name is a placeholder.
    .text
    .globl Batch_024d0c20
Batch_024d0c20:
    lis     r12,4107
    lfs     f0,-20376(r12)
    li      r9,0
    lfs     f13,440(r3)
    fcmpu   cr0,f1,f0
    stw     r9,504(r3)
    li      r0,2
    fmuls   f0,f13,f1
    stw     r0,500(r3)
    mfcr    r10
    lwz     r11,500(r3)
    fabs    f0,f0
    lfs     f13,444(r3)
    srwi    r0,r10,31
    lfs     f12,448(r3)
    xori    r0,r0,1
    fcmpu   cr0,f0,f13
    stb     r0,509(r3)
    stb     r4,508(r3)
    bge-    L024d0c98
    lfs     f12,452(r3)
    fmr     f0,f13
    lfs     f13,460(r3)
    stfs    f12,516(r3)
    stfs    f13,520(r3)
    stfs    f0,512(r3)
    lwz     r12,464(r3)
    stb     r9,232(r3)
    stw     r12,524(r3)
    blr
L024d0c98:
    fcmpu   cr0,f0,f12
    ble-    L024d0ca4
    fmr     f0,f12
L024d0ca4:
    lfs     f12,452(r3)
    lfs     f13,460(r3)
    stfs    f12,516(r3)
    lwz     r12,464(r3)
    stfs    f13,520(r3)
    stw     r12,524(r3)
    stb     r9,232(r3)
    stfs    f0,512(r3)
    blr
