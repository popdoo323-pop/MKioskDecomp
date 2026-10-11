# Converted from the disassembly of 0x024d6e98 (184 bytes). Name is a placeholder.
    .text
    .globl Batch_024d6e98
Batch_024d6e98:
    mflr    r0
    stwu    r1,-40(r1)
    stfd    f31,24(r1)
    ps_merge10 f31,f31,f31
    stw     r28,8(r1)
    stfs    f31,32(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r0,44(r1)
    li      r0,0
    stw     r31,20(r1)
    mr      r31,r3
    stw     r0,1676(r3)
    bl      ext_024d0770
    lwz     r28,1676(r31)
    lwz     r0,568(r31)
    cmpw    r28,r0
    subf    r29,r28,r0
    bge-    L024d6f24
    lis     r8,4107
    lfs     f31,-17468(r8)
    slwi    r30,r28,2
L024d6ef0:
    lwz     r0,28(r31)
    cmplw   r28,r0
    lwz     r12,32(r31)
    bge-    L024d6f04
    add     r12,r12,r30
L024d6f04:
    lwz     r3,0(r12)
    fmr     f1,f31
    lwz     r4,4(r3)
    bl      ext_0247f968
    addic.  r29,r29,-1
    addi    r28,r28,1
    addi    r30,r30,4
    bne+    L024d6ef0
L024d6f24:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lfs     f31,32(r1)
    lwz     r30,16(r1)
    lfd     f31,24(r1)
    lwz     r31,20(r1)
    isync
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
