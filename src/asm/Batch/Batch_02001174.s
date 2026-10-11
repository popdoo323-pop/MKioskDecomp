# Converted from the disassembly of 0x02001174 (184 bytes). Name is a placeholder.
    .text
    .globl Batch_02001174
Batch_02001174:
    lwz     r11,80(r3)
    lwz     r12,76(r11)
    lfs     f10,12(r12)
    lis     r12,4120
    fabs    f0,f10
    lfs     f11,-15776(r12)
    lwz     r12,76(r3)
    fcmpu   cr0,f0,f11
    lis     r11,4096
    lbz     r0,188(r12)
    lfs     f12,176(r11)
    bge-    L020011bc
    lis     r12,4120
    cmpwi   r0,0
    fmr     f0,f11
    lfs     f10,-15784(r12)
    beq-    L020011f4
    b       L020011d8
L020011bc:
    fcmpu   cr0,f0,f12
    ble-    L020011c8
    fmr     f0,f12
L020011c8:
    lis     r12,4120
    cmpwi   r0,0
    lfs     f10,-15784(r12)
    beq-    L020011f4
L020011d8:
    lis     r11,4096
    fsubs   f8,f12,f11
    lfs     f9,168(r11)
    fcmpu   cr0,f8,f9
    fmr     f13,f10
    beq-    L02001224
    b       L02001210
L020011f4:
    lis     r11,4120
    lfs     f13,-15780(r11)
    lis     r11,4096
    fsubs   f8,f12,f11
    lfs     f9,168(r11)
    fcmpu   cr0,f8,f9
    beq-    L02001224
L02001210:
    fsubs   f9,f10,f13
    fsubs   f11,f0,f11
    fmuls   f12,f9,f11
    fdivs   f0,f12,f8
    fadds   f13,f0,f13
L02001224:
    stfs    f13,24(r4)
    blr
