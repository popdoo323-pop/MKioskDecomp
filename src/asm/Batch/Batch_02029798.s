# Converted from the disassembly of 0x02029798 (244 bytes). Name is a placeholder.
    .text
    .globl Batch_02029798
Batch_02029798:
    stwu    r1,-32(r1)
    stmw    r27,12(r1)
    mflr    r0
    stw     r0,36(r1)
    mr      r28,r3
    lwz     r0,280(r28)
    lis     r10,4096
    mulli   r8,r0,12
    addi    r10,r10,11492
    lwzx    r27,r10,r8
    add     r11,r10,r8
    lwz     r29,4(r11)
    cmpwi   r27,0
    lwz     r30,8(r11)
    ble-    L02029804
    mr      r3,r28
    bl      ext_02028a30
    lwz     r4,68(r28)
    xori    r6,r3,1
    mr      r5,r27
    mr      r3,r28
    bl      ext_020296d0
    lwz     r12,68(r28)
    li      r6,0
    stw     r6,56(r12)
    lwz     r3,68(r28)
    bl      ext_02027310
L02029804:
    cmpwi   r29,0
    ble-    L02029830
    lwz     r4,72(r28)
    li      r6,0
    mr      r5,r29
    mr      r3,r28
    bl      ext_020296d0
    lwz     r11,72(r28)
    stw     r27,56(r11)
    lwz     r3,72(r28)
    bl      ext_0202741c
L02029830:
    cmpwi   r30,0
    ble-    L02029878
    mr      r3,r28
    li      r31,2
    bl      ext_02028a30
    cmpwi   r3,0
    lwz     r4,76(r28)
    beq-    L02029854
    li      r31,0
L02029854:
    mr      r6,r31
    mr      r5,r30
    mr      r3,r28
    bl      ext_020296d0
    lwz     r12,76(r28)
    add     r7,r27,r29
    stw     r7,56(r12)
    lwz     r3,76(r28)
    bl      ext_0202741c
L02029878:
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
