# Converted from the disassembly of 0x024c995c (148 bytes). Name is a placeholder.
    .text
    .globl Batch_024c995c
Batch_024c995c:
    lfs     f0,488(r3)
    lfs     f12,492(r3)
    fcmpu   cr0,f1,f0
    stb     r5,541(r3)
    stb     r4,540(r3)
    li      r11,2
    lfs     f13,504(r3)
    stw     r11,536(r3)
    lwz     r0,536(r3)
    bge-    L024c99b4
    lwz     r0,508(r3)
    stfs    f0,544(r3)
    lis     r12,4107
    lfs     f0,-20216(r12)
    stw     r0,556(r3)
    stfs    f0,564(r3)
    stfs    f13,552(r3)
    li      r10,1
    lfs     f13,496(r3)
    stw     r10,560(r3)
    stfs    f13,548(r3)
    blr
L024c99b4:
    fcmpu   cr0,f1,f12
    ble-    L024c99c0
    fmr     f1,f12
L024c99c0:
    stfs    f13,552(r3)
    li      r10,1
    lwz     r0,508(r3)
    lfs     f13,496(r3)
    lis     r12,4107
    stw     r10,560(r3)
    lfs     f0,-20216(r12)
    stfs    f13,548(r3)
    stfs    f0,564(r3)
    stw     r0,556(r3)
    stfs    f1,544(r3)
    blr
