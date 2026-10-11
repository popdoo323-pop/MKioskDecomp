# Converted from the disassembly of 0x02031270 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_02031270
Batch_02031270:
    lis     r12,4096
    lfs     f13,0(r4)
    lfs     f0,16188(r12)
    fcmpu   cr0,f13,f0
    bne-    L0203129c
    lfs     f12,4(r4)
    fcmpu   cr0,f12,f0
    bne-    L0203129c
    lfs     f12,8(r4)
    fcmpu   cr0,f12,f0
    beqlr-
L0203129c:
    lwz     r11,88(r3)
    stfs    f13,96(r11)
    lfs     f13,4(r4)
    stfs    f13,100(r11)
    lfs     f0,8(r4)
    stfs    f0,104(r11)
    blr
