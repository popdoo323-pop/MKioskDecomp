# Converted from the disassembly of 0x02034370 (204 bytes). Name is a placeholder.
    .text
    .globl Batch_02034370
Batch_02034370:
    stwu    r1,-32(r1)
    mflr    r0
    stmw    r27,12(r1)
    mr      r28,r3
    stw     r0,36(r1)
    mr      r29,r4
    bl      ext_02034078
    mr      r3,r28
    bl      ext_02033b7c
    mr.     r30,r29
    li      r27,0
    ble-    L020343d0
    addi    r31,r28,100
L020343a4:
    mr      r5,r29
    mr      r4,r27
    mr      r3,r31
    bl      ext_02033594
    li      r4,0
    mr      r3,r28
    bl      ext_02034120
    addic.  r30,r30,-1
    addi    r27,r27,1
    addi    r31,r31,280
    bne+    L020343a4
L020343d0:
    addic.  r29,r29,-1
    ble-    L020343e4
    mr      r3,r28
    mr      r4,r29
    bl      ext_02034288
L020343e4:
    lis     r3,4117
    lwz     r3,-28988(r3)
    cmpwi   r3,0
    beq-    L02034428
    lis     r12,4117
    lwz     r12,1072(r12)
    cmpwi   r12,5
    li      r4,1
    beq-    L02034420
    lwz     r0,152(r3)
    cmpwi   r0,1
    beq-    L02034420
    cmpwi   r0,2
    beq-    L02034420
    li      r4,0
L02034420:
    clrlwi  r4,r4,24
    bl      ext_0205a944
L02034428:
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
