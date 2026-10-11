# Converted from the disassembly of 0x020296d0 (200 bytes). Name is a placeholder.
    .text
    .globl Batch_020296d0
Batch_020296d0:
    stwu    r1,-40(r1)
    mflr    r0
    stmw    r26,16(r1)
    mr      r26,r4
    mr.     r31,r5
    mr      r30,r6
    li      r27,0
    stw     r0,44(r1)
    mr      r29,r3
    ble-    L02029784
    li      r28,2
L020296fc:
    cmplwi  r30,1
    blt-    L0202971c
    beq-    L02029738
    cmplwi  r30,2
    beq-    L02029754
    cmpwi   r27,0
    beq-    L0202977c
    b       L0202976c
L0202971c:
    addi    r4,r1,8
    mr      r3,r29
    stw     r28,8(r1)
    bl      ext_02028adc
    mr.     r27,r3
    beq-    L0202977c
    b       L0202976c
L02029738:
    addi    r4,r1,8
    mr      r3,r29
    stw     r28,8(r1)
    bl      ext_02028c1c
    mr.     r27,r3
    beq-    L0202977c
    b       L0202976c
L02029754:
    addi    r4,r1,8
    mr      r3,r29
    stw     r30,8(r1)
    bl      ext_02028d88
    mr.     r27,r3
    beq-    L0202977c
L0202976c:
    mr      r5,r26
    mr      r4,r27
    mr      r3,r29
    bl      ext_02028e6c
L0202977c:
    addic.  r31,r31,-1
    bne+    L020296fc
L02029784:
    lmw     r26,16(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
