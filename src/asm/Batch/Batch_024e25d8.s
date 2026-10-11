# Converted from the disassembly of 0x024e25d8 (188 bytes). Name is a placeholder.
    .text
    .globl Batch_024e25d8
Batch_024e25d8:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    mr      r31,r3
    stw     r0,28(r1)
    lbz     r10,884(r31)
    cmpwi   r10,0
    beq-    L024e2680
    lwz     r0,880(r31)
    cmpwi   r0,1
    beq-    L024e2680
    cmpwi   r0,4
    beq-    L024e2680
    li      r4,1
    li      r3,0
    stb     r4,885(r31)
    bl      ext_024e2034
    cmpwi   r3,0
    bne-    L024e2638
    li      r12,0
    stw     r12,880(r31)
    lwz     r0,880(r31)
    stw     r0,12(r1)
    b       L024e2680
L024e2638:
    bl      ext_02421764
    mr.     r12,r3
    beq-    L024e2648
    lwz     r12,424(r12)
L024e2648:
    lwz     r0,52(r12)
    cmplwi  r0,1
    li      r3,0
    ble-    L024e2660
    lwz     r9,60(r12)
    lwz     r3,4(r9)
L024e2660:
    li      r10,1
    addi    r4,r1,8
    stw     r10,8(r1)
    bl      ext_0242f2a4
    li      r12,2
    stw     r12,880(r31)
    lwz     r0,880(r31)
    stw     r0,16(r1)
L024e2680:
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
