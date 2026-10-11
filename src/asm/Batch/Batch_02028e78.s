# Converted from the disassembly of 0x02028e78 (244 bytes). Name is a placeholder.
    .text
    .globl Batch_02028e78
Batch_02028e78:
    stwu    r1,-48(r1)
    mflr    r0
    stmw    r24,16(r1)
    li      r24,0
    mr      r26,r3
    mr      r27,r4
    mr      r25,r24
    mr      r28,r5
    mr      r30,r7
    stw     r0,52(r1)
    mr      r29,r6
    b       L02028eb0
L02028ea8:
    cmpwi   r25,0
    bne-    L02028eb8
L02028eb0:
    mr      r31,r28
    b       L02028ebc
L02028eb8:
    mr      r31,r29
L02028ebc:
    cmpwi   r31,0
    ble-    L02028f4c
L02028ec4:
    cmplwi  r30,1
    blt-    L02028ee4
    beq-    L02028f00
    cmplwi  r30,2
    beq-    L02028f1c
    cmpwi   r24,0
    beq-    L02028f44
    b       L02028f34
L02028ee4:
    addi    r4,r1,8
    mr      r3,r26
    stw     r25,8(r1)
    bl      ext_02028adc
    mr.     r24,r3
    beq-    L02028f44
    b       L02028f34
L02028f00:
    addi    r4,r1,8
    mr      r3,r26
    stw     r25,8(r1)
    bl      ext_02028c1c
    mr.     r24,r3
    beq-    L02028f44
    b       L02028f34
L02028f1c:
    addi    r4,r1,8
    mr      r3,r26
    stw     r25,8(r1)
    bl      ext_02028d88
    mr.     r24,r3
    beq-    L02028f44
L02028f34:
    mr      r5,r27
    mr      r4,r24
    mr      r3,r26
    bl      ext_02028e6c
L02028f44:
    addic.  r31,r31,-1
    bne+    L02028ec4
L02028f4c:
    addi    r25,r25,1
    cmpwi   r25,2
    blt+    L02028ea8
    lmw     r24,16(r1)
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
