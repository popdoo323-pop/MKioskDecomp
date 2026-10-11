# Converted from the disassembly of 0x024ec324 (228 bytes). Name is a placeholder.
    .text
    .globl Batch_024ec324
Batch_024ec324:
    stwu    r1,-40(r1)
    stmw    r27,20(r1)
    mflr    r0
    stw     r0,44(r1)
    mr      r29,r3
    lwz     r6,28(r29)
    mr      r31,r4
    cmplwi  r6,2
    lwz     r12,32(r29)
    ble-    L024ec350
    addi    r12,r12,8
L024ec350:
    cmpwi   r31,-1
    lwz     r3,0(r12)
    bne-    L024ec380
    lis     r10,4107
    lfs     f1,-7548(r10)
    li      r4,0
    bl      ext_0247f968
    lwz     r27,92(r29)
    cmpwi   r27,0
    li      r30,0
    ble-    L024ec3f4
    b       L024ec3c0
L024ec380:
    lis     r8,4107
    lis     r9,17200
    addi    r7,r31,1
    lfd     f0,-7544(r8)
    xoris   r0,r7,32768
    stw     r9,8(r1)
    stw     r0,12(r1)
    lfd     f13,8(r1)
    fsub    f0,f13,f0
    frsp    f1,f0
    li      r4,0
    bl      ext_0247f968
    lwz     r27,92(r29)
    cmpwi   r27,0
    li      r30,0
    ble-    L024ec3f4
L024ec3c0:
    li      r28,0
L024ec3c4:
    lwz     r0,88(r29)
    cmplw   r30,r0
    li      r3,0
    bge-    L024ec3dc
    lwz     r12,96(r29)
    lwzx    r3,r12,r28
L024ec3dc:
    mr      r4,r31
    bl      ext_024d7afc
    addic.  r27,r27,-1
    addi    r30,r30,1
    addi    r28,r28,4
    bne+    L024ec3c4
L024ec3f4:
    lmw     r27,20(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
