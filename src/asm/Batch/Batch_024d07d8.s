# Converted from the disassembly of 0x024d07d8 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_024d07d8
Batch_024d07d8:
    lfs     f13,472(r3)
    li      r12,0
    lfs     f0,476(r3)
    stw     r12,504(r3)
    stfs    f0,520(r3)
    lfs     f0,468(r3)
    stb     r5,509(r3)
    li      r9,1
    stfs    f0,512(r3)
    stb     r9,232(r3)
    stfs    f13,516(r3)
    stw     r12,524(r3)
    li      r10,2
    stb     r4,508(r3)
    stw     r10,500(r3)
    lwz     r11,500(r3)
    blr
