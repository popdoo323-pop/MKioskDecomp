# Converted from the disassembly of 0x0202c754 (180 bytes). Name is a placeholder.
    .text
    .globl Batch_0202c754
Batch_0202c754:
    stwu    r1,-96(r1)
    stmw    r26,56(r1)
    mflr    r0
    stfd    f31,80(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,88(r1)
    stw     r0,100(r1)
    mr      r30,r3
    lwz     r0,36(r30)
    li      r27,0
    lis     r9,4096
    mr      r31,r4
    cmpw    r27,r0
    lfs     f31,13940(r9)
    bge-    L0202c7e8
    addi    r29,r1,44
    li      r28,0
L0202c798:
    lwz     r10,44(r30)
    lwzx    r26,r10,r28
    addi    r4,r1,8
    mr      r3,r30
    mr      r5,r26
    bl      ext_0202b564
    lwz     r11,4(r30)
    lwz     r3,84(r11)
    bl      ext_02185cb4
    mr      r4,r29
    bl      ext_025579b0
    fcmpu   cr0,f1,f31
    bge-    L0202c7d4
    fmr     f31,f1
    stw     r26,0(r31)
L0202c7d4:
    lwz     r0,36(r30)
    addi    r27,r27,1
    cmpw    r27,r0
    addi    r28,r28,4
    blt+    L0202c798
L0202c7e8:
    lmw     r26,56(r1)
    lfs     f31,88(r1)
    lfd     f31,80(r1)
    isync
    lwz     r0,100(r1)
    mtlr    r0
    addi    r1,r1,96
    blr
