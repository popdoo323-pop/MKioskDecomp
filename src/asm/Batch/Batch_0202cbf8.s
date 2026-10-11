# Converted from the disassembly of 0x0202cbf8 (180 bytes). Name is a placeholder.
    .text
    .globl Batch_0202cbf8
Batch_0202cbf8:
    stwu    r1,-32(r1)
    stmw    r26,8(r1)
    mr      r31,r4
    mflr    r0
    mr      r5,r31
    mr      r30,r3
    li      r4,1
    stw     r0,36(r1)
    bl      ext_0202b1c8
    lwz     r4,12(r30)
    bl      ext_0202c940
    lwz     r8,16(r30)
    li      r26,0
    cmpw    r26,r8
    bge-    L0202cc98
    lis     r29,4124
    li      r28,0
    addi    r29,r29,27408
L0202cc40:
    lwz     r9,24(r30)
    lwzx    r27,r9,r28
    bl      ext_029aaf98
    slwi    r0,r3,2
    cmpwi   r27,0
    lwzx    r6,r29,r0
    beq-    L0202cc84
    lwz     r3,64(r27)
    li      r5,8
    mr      r4,r27
    bl      ext_02080ad0
    cmpwi   r3,0
    beq-    L0202cc84
    mr      r5,r31
    mr      r4,r27
    mr      r3,r30
    bl      ext_0202c9e0
L0202cc84:
    lwz     r0,16(r30)
    addi    r26,r26,1
    cmpw    r26,r0
    addi    r28,r28,4
    blt+    L0202cc40
L0202cc98:
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
