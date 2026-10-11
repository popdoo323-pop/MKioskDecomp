# Converted from the disassembly of 0x02018a88 (312 bytes). Name is a placeholder.
    .text
    .globl Batch_02018a88
Batch_02018a88:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r10,96(r31)
    cmpwi   r10,0
    beq-    L02018ba8
    lwz     r30,184(r10)
    cmpwi   r30,0
    beq-    L02018ba8
    lwz     r9,8(r30)
    lwz     r3,84(r9)
    bl      ext_02185c90
    cmpwi   r3,0
    bne-    L02018ba8
    lwz     r5,8(r30)
    lwz     r3,84(r5)
    bl      ext_02185c38
    lwz     r10,152(r31)
    lwz     r6,44(r10)
    cmplw   r3,r6
    lwz     r12,48(r10)
    bge-    L02018af4
    mulli   r0,r3,108
    add     r12,r12,r0
L02018af4:
    lwz     r0,44(r10)
    lfs     f12,20(r12)
    cmplw   r3,r0
    lwz     r11,48(r10)
    bge-    L02018b20
    mulli   r9,r3,108
    add     r12,r11,r9
    lbz     r10,28(r12)
    extsb.  r10,r10
    blt-    L02018b6c
    b       L02018b2c
L02018b20:
    lbz     r10,28(r11)
    extsb.  r10,r10
    blt-    L02018b6c
L02018b2c:
    cmplw   r3,r0
    bge-    L02018b3c
    mulli   r0,r3,108
    add     r11,r11,r0
L02018b3c:
    lbz     r8,28(r11)
    extsb   r8,r8
    cmpwi   r8,2
    bne-    L02018b6c
    lis     r9,4096
    lfs     f13,5860(r9)
    lis     r7,4120
    fsubs   f12,f12,f13
    lfs     f0,-14036(r7)
    fcmpu   cr0,f12,f0
    ble-    L02018ba8
    b       L02018b84
L02018b6c:
    lis     r8,4096
    lis     r7,4120
    lfs     f12,5832(r8)
    lfs     f0,-14036(r7)
    fcmpu   cr0,f12,f0
    ble-    L02018ba8
L02018b84:
    lwz     r12,104(r31)
    lwz     r5,68(r12)
    cmpwi   r5,-1
    beq-    L02018ba8
    lwz     r8,68(r12)
    cmpwi   r8,6
    bne-    L02018ba8
    li      r0,0
    stb     r0,116(r31)
L02018ba8:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
