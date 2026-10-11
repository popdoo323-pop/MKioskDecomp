# Converted from the disassembly of 0x024c9494 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024c9494
Batch_024c9494:
    lwz     r0,308(r3)
    cmpwi   r0,0
    beqlr-
    lwz     r10,152(r3)
    cmpwi   r10,0
    beqlr-
    lfs     f13,324(r3)
    lfs     f0,328(r3)
    lfs     f11,336(r3)
    fsubs   f12,f0,f13
    lfs     f10,340(r3)
    fsubs   f9,f1,f11
    fsubs   f0,f10,f11
    fmuls   f12,f12,f9
    lis     r11,4107
    fdivs   f12,f12,f0
    lfs     f0,-20376(r11)
    fadds   f9,f13,f12
    lwz     r11,156(r3)
    stfs    f9,320(r3)
    lbz     r12,68(r11)
    fneg    f11,f9
    stfs    f0,36(r11)
    ori     r0,r12,16
    stfs    f0,28(r11)
    stb     r0,68(r11)
    stfs    f11,32(r11)
    blr
