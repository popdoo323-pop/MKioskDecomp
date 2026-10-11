# Converted from the disassembly of 0x02045128 (360 bytes). Name is a placeholder.
    .text
    .globl Batch_02045128
Batch_02045128:
    stwu    r1,-40(r1)
    stmw    r25,12(r1)
    mflr    r0
    stw     r0,44(r1)
    mr      r30,r3
    lhz     r11,88(r30)
    cmpwi   r11,0
    beq-    L02045198
    li      r31,1
    li      r28,6
    li      r29,0
L02045154:
    slw     r5,r31,r29
    clrlwi  r6,r5,16
    and.    r7,r11,r6
    beq-    L02045170
    mr      r3,r30
    mr      r4,r29
    bl      ext_02631110
L02045170:
    addic.  r28,r28,-1
    addi    r29,r29,1
    beq-    L02045184
    lhz     r11,88(r30)
    b       L02045154
L02045184:
    li      r8,0
    addi    r3,r30,88
    li      r4,2
    sth     r8,88(r30)
    bl      ext_029a9a78
L02045198:
    lhz     r0,92(r30)
    cmpwi   r0,0
    beq-    L020451f4
    li      r29,1
    li      r28,6
    li      r31,0
L020451b0:
    slw     r8,r29,r31
    clrlwi  r9,r8,16
    and.    r10,r0,r9
    beq-    L020451cc
    mr      r3,r30
    mr      r4,r31
    bl      ext_026311b8
L020451cc:
    addic.  r28,r28,-1
    addi    r31,r31,1
    beq-    L020451e0
    lhz     r0,92(r30)
    b       L020451b0
L020451e0:
    li      r9,0
    addi    r3,r30,92
    li      r4,2
    sth     r9,92(r30)
    bl      ext_029a9a78
L020451f4:
    lhz     r0,90(r30)
    cmpwi   r0,0
    beq-    L02045274
    li      r31,0
    li      r25,6
    li      r28,1
    mr      r26,r31
    mr      r27,r31
L02045214:
    slw     r11,r28,r31
    clrlwi  r12,r11,16
    and.    r0,r0,r12
    beq-    L02045248
    addi    r29,r30,96
    mr      r4,r31
    lwzx    r5,r29,r26
    mr      r3,r30
    bl      ext_02631198
    li      r4,4
    add     r3,r29,r26
    stwx    r27,r29,r26
    bl      ext_029a9a78
L02045248:
    addic.  r25,r25,-1
    addi    r31,r31,1
    addi    r26,r26,4
    beq-    L02045260
    lhz     r0,90(r30)
    b       L02045214
L02045260:
    li      r0,0
    addi    r3,r30,90
    li      r4,2
    sth     r0,90(r30)
    bl      ext_029a9a78
L02045274:
    mr      r3,r30
    bl      ext_02630e4c
    lmw     r25,12(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
