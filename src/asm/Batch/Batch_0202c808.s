# Converted from the disassembly of 0x0202c808 (164 bytes). Name is a placeholder.
    .text
    .globl Batch_0202c808
Batch_0202c808:
    stwu    r1,-48(r1)
    stmw    r26,8(r1)
    mflr    r0
    stfd    f31,32(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,40(r1)
    stw     r0,52(r1)
    mr      r29,r3
    lwz     r0,176(r29)
    li      r28,0
    lis     r9,4096
    mr      r31,r4
    cmpw    r28,r0
    lfs     f31,13940(r9)
    bge-    L0202c88c
    li      r27,0
L0202c848:
    lwz     r12,184(r29)
    lwz     r11,4(r29)
    lwzx    r26,r12,r27
    lwz     r3,84(r11)
    lwz     r30,20(r26)
    bl      ext_02185cb4
    addi    r4,r30,36
    bl      ext_025579b0
    fcmpu   cr0,f1,f31
    bge-    L0202c878
    fmr     f31,f1
    stw     r26,8(r31)
L0202c878:
    lwz     r0,176(r29)
    addi    r28,r28,1
    cmpw    r28,r0
    addi    r27,r27,4
    blt+    L0202c848
L0202c88c:
    lmw     r26,8(r1)
    lfs     f31,40(r1)
    lfd     f31,32(r1)
    isync
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
