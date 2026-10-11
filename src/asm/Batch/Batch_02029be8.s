# Converted from the disassembly of 0x02029be8 (196 bytes). Name is a placeholder.
    .text
    .globl Batch_02029be8
Batch_02029be8:
    lwz     r10,184(r3)
    li      r0,0
    cmpwi   r10,0
    lwz     r11,88(r3)
    beq-    L02029ca4
    lfs     f13,36(r10)
    lfs     f0,36(r11)
    lwz     r12,276(r3)
    fsubs   f10,f13,f0
    lfs     f12,124(r12)
    fcmpu   cr0,f10,f12
    ble-    L02029ca4
    lwz     r12,276(r3)
    li      r0,1
    stb     r0,292(r3)
    lfs     f0,128(r12)
    fsubs   f11,f10,f12
    fsubs   f13,f0,f12
    lfs     f12,132(r12)
    lis     r10,4096
    fdivs   f11,f11,f13
    lfs     f0,11804(r10)
    fcmpu   cr0,f11,f0
    lwz     r7,280(r3)
    bge-    L02029c60
    li      r6,0
    cmpw    r6,r7
    fmuls   f10,f12,f0
    bge-    L02029ca4
    b       L02029c84
L02029c60:
    lis     r9,4096
    lfs     f13,11808(r9)
    fcmpu   cr0,f11,f13
    ble-    L02029c74
    fmr     f11,f13
L02029c74:
    li      r6,0
    cmpw    r6,r7
    fmuls   f10,f12,f11
    bge-    L02029ca4
L02029c84:
    addi    r11,r3,76
L02029c88:
    lwzu    r9,8(r11)
    lwz     r7,16(r9)
    stfs    f10,60(r7)
    lwz     r8,280(r3)
    addi    r6,r6,1
    cmpw    r6,r8
    blt+    L02029c88
L02029ca4:
    mr      r3,r0
    blr
