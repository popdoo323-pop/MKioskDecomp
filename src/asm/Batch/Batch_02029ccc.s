# Converted from the disassembly of 0x02029ccc (252 bytes). Name is a placeholder.
    .text
    .globl Batch_02029ccc
Batch_02029ccc:
    mflr    r0
    mr      r4,r3
    stw     r0,4(r1)
    li      r10,0
    stwu    r1,-8(r1)
    bl      ext_02029cac
    cmpwi   r3,0
    bne-    L02029db4
    lwz     r9,184(r4)
    cmpwi   r9,0
    lwz     r11,88(r4)
    beq-    L02029db4
    lfs     f11,36(r11)
    lfs     f13,36(r9)
    lwz     r12,276(r4)
    fsubs   f12,f11,f13
    lfs     f13,136(r12)
    fcmpu   cr0,f12,f13
    ble-    L02029db4
    lwz     r8,276(r4)
    li      r10,1
    stb     r10,293(r4)
    lfs     f11,140(r8)
    fsubs   f0,f12,f13
    lfs     f12,144(r8)
    fsubs   f10,f11,f13
    lis     r7,4096
    fdivs   f10,f0,f10
    lfs     f13,11804(r7)
    fcmpu   cr0,f10,f13
    lwz     r0,280(r4)
    bge-    L02029d60
    li      r8,0
    cmpw    r8,r0
    fmuls   f0,f12,f13
    bge-    L02029db4
    b       L02029d84
L02029d60:
    lis     r11,4096
    lfs     f0,11808(r11)
    fcmpu   cr0,f10,f0
    ble-    L02029d74
    fmr     f10,f0
L02029d74:
    li      r8,0
    cmpw    r8,r0
    fmuls   f0,f12,f10
    bge-    L02029db4
L02029d84:
    addi    r7,r4,76
L02029d88:
    lwzu    r12,8(r7)
    lwz     r6,24(r9)
    lwz     r5,24(r12)
    cmpw    r5,r6
    bge-    L02029da8
    lwz     r6,16(r12)
    stfs    f0,60(r6)
    lwz     r0,280(r4)
L02029da8:
    addi    r8,r8,1
    cmpw    r8,r0
    blt+    L02029d88
L02029db4:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    mr      r3,r10
    blr
