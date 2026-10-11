# Converted from the disassembly of 0x02035e44 (328 bytes). Name is a placeholder.
    .text
    .globl Batch_02035e44
Batch_02035e44:
    stwu    r1,-32(r1)
    stmw    r27,12(r1)
    mflr    r0
    mr      r30,r5
    mr      r31,r6
    stw     r0,36(r1)
    mr      r29,r4
    bl      ext_02041f68
    bl      ext_02042904
    mr      r4,r29
    mr      r28,r3
    bl      ext_02052d4c
    bl      ext_02045bd4
    mr      r27,r3
    mr      r3,r28
    li      r28,0
    clrlwi  r12,r27,24
    lwz     r0,24(r30)
    mr      r5,r28
    mr      r4,r29
    stw     r28,8(r1)
    or      r0,r0,r12
    addi    r6,r1,8
    stw     r0,24(r30)
    bl      ext_02052e2c
    lwz     r0,8(r1)
    rlwinm. r6,r0,0,14,14
    beq-    L02035ec4
    lwz     r7,24(r30)
    oris    r7,r7,8
    stw     r7,24(r30)
    stb     r28,0(r31)
L02035ec4:
    cmpwi   r27,12
    beq-    L02035ed4
    rlwinm. r8,r0,0,13,13
    beq-    L02035ee0
L02035ed4:
    lwz     r9,24(r30)
    oris    r9,r9,2
    stw     r9,24(r30)
L02035ee0:
    rlwinm. r10,r0,0,12,12
    beq-    L02035ef4
    lwz     r11,24(r30)
    oris    r11,r11,16
    stw     r11,24(r30)
L02035ef4:
    rlwinm. r12,r0,0,11,11
    beq-    L02035f08
    lwz     r6,24(r30)
    oris    r6,r6,32
    stw     r6,24(r30)
L02035f08:
    rlwinm. r7,r0,0,9,9
    beq-    L02035f1c
    lwz     r8,24(r30)
    oris    r8,r8,80
    stw     r8,24(r30)
L02035f1c:
    rlwinm. r9,r0,0,8,8
    beq-    L02035f30
    lwz     r10,24(r30)
    oris    r10,r10,128
    stw     r10,24(r30)
L02035f30:
    rlwinm. r11,r0,0,7,7
    beq-    L02035f44
    lwz     r12,24(r30)
    oris    r12,r12,256
    stw     r12,24(r30)
L02035f44:
    rlwinm. r6,r0,0,4,4
    beq-    L02035f58
    lwz     r7,24(r30)
    oris    r7,r7,512
    stw     r7,24(r30)
L02035f58:
    rlwinm  r3,r0,4,30,31
    addi    r0,r3,-1
    cmplwi  r0,3
    bge-    L02035f78
    lwz     r0,24(r30)
    rlwinm  r10,r3,28,2,3
    or      r0,r0,r10
    stw     r0,24(r30)
L02035f78:
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
