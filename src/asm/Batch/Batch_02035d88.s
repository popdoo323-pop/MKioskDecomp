# Converted from the disassembly of 0x02035d88 (188 bytes). Name is a placeholder.
    .text
    .globl Batch_02035d88
Batch_02035d88:
    cmplwi  r4,4
    bgelr-
    lis     r12,4096
    lfs     f12,16664(r12)
    lis     r12,4096
    fcmpu   cr0,f1,f12
    lfs     f13,16660(r12)
    ble-    L02035dc0
    lis     r12,4120
    lfs     f0,-12068(r12)
    fcmpu   cr0,f0,f12
    fmuls   f1,f12,f12
    bne-    L02035ddc
    b       L02035de0
L02035dc0:
    fcmpu   cr0,f1,f13
    blelr-
    lis     r12,4120
    lfs     f0,-12068(r12)
    fcmpu   cr0,f0,f12
    fmuls   f1,f1,f1
    beq-    L02035de0
L02035ddc:
    fmuls   f1,f1,f0
L02035de0:
    mulli   r11,r4,280
    fsubs   f0,f12,f1
    add     r11,r3,r11
    lwz     r0,368(r11)
    fsel    f0,f0,f0,f13
    lfs     f9,364(r11)
    cmpwi   r0,2
    addi    r11,r11,100
    blt-    L02035e0c
    fcmpu   cr0,f9,f0
    ble-    L02035e38
L02035e0c:
    lis     r12,4120
    fsubs   f10,f0,f9
    lfs     f11,-12064(r12)
    fcmpu   cr0,f10,f11
    ble-    L02035e34
    fadds   f13,f9,f11
    li      r0,2
    stw     r0,268(r11)
    stfs    f13,264(r11)
    blr
L02035e34:
    stfs    f0,264(r11)
L02035e38:
    li      r0,2
    stw     r0,268(r11)
    blr
