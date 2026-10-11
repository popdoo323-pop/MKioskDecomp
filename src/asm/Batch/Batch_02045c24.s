# Converted from the disassembly of 0x02045c24 (160 bytes). Name is a placeholder.
    .text
    .globl Batch_02045c24
Batch_02045c24:
    stwu    r1,-40(r1)
    stmw    r25,12(r1)
    mflr    r0
    stw     r0,44(r1)
    mr      r29,r4
    mr      r28,r3
    lis     r31,4117
    mr      r30,r5
    lwz     r31,-27200(r31)
    bl      ext_02045abc
    mr      r4,r28
    mr      r3,r31
    bl      ext_02054500
    mr      r27,r3
    li      r28,0
    cmpwi   r30,0
    li      r25,127
    mr      r26,r28
    ble-    L02045ca0
    addi    r29,r29,-4
L02045c74:
    lwzu    r4,4(r29)
    mr      r3,r31
    bl      ext_02054500
    mr      r0,r3
    cmpw    r0,r25
    bge-    L02045c94
    mr      r25,r0
    mr      r28,r26
L02045c94:
    addic.  r30,r30,-1
    addi    r26,r26,1
    bne+    L02045c74
L02045ca0:
    cmpw    r27,r25
    li      r3,-1
    ble-    L02045cb0
    mr      r3,r28
L02045cb0:
    lmw     r25,12(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
