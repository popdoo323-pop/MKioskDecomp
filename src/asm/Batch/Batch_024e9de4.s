# Converted from the disassembly of 0x024e9de4 (404 bytes). Name is a placeholder.
    .text
    .globl Batch_024e9de4
Batch_024e9de4:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r30,r3
    stw     r0,28(r1)
    lwz     r7,120(r30)
    cmpwi   r7,0
    beq-    L024e9e24
    lwz     r10,4(r7)
    li      r9,0
    cmpwi   r10,36
    li      r0,1
    bne-    L024e9e30
    b       L024e9e4c
L024e9e24:
    li      r0,1
    li      r9,0
    li      r10,-1
L024e9e30:
    cmpwi   r10,37
    beq-    L024e9e4c
    cmpwi   r10,54
    beq-    L024e9e4c
    cmpwi   r10,55
    beq-    L024e9e4c
    li      r0,0
L024e9e4c:
    clrlwi. r0,r0,24
    stw     r9,128(r30)
    bne-    L024e9e68
    lwz     r0,120(r30)
    addi    r12,r30,364
    cmplw   r0,r12
    bne-    L024e9e84
L024e9e68:
    lwz     r6,140(r30)
    stw     r9,16(r6)
    lwz     r29,660(r30)
    cmpwi   r29,0
    li      r31,0
    ble-    L024e9ebc
    b       L024e9ea0
L024e9e84:
    lwz     r11,140(r30)
    li      r6,2
    stw     r6,16(r11)
    lwz     r29,660(r30)
    cmpwi   r29,0
    li      r31,0
    ble-    L024e9ebc
L024e9ea0:
    mr      r3,r30
    mr      r4,r31
    bl      ext_024e4790
    bl      ext_024e5fb4
    addic.  r29,r29,-1
    addi    r31,r31,1
    bne+    L024e9ea0
L024e9ebc:
    lis     r9,4117
    lwz     r9,3660(r9)
    lwz     r12,12(r9)
    lwz     r7,0(r12)
    cmplwi  r7,3
    lwz     r12,4(r12)
    ble-    L024e9edc
    addi    r12,r12,12
L024e9edc:
    lis     r8,4119
    lwzu    r0,4616(r8)
    lis     r4,4119
    lwz     r31,0(r12)
    cmpwi   r0,0
    addi    r4,r4,4620
    bne-    L024e9f0c
    lis     r10,4107
    li      r9,1
    addi    r10,r10,-9268
    stw     r9,0(r8)
    stw     r10,0(r4)
L024e9f0c:
    cmpwi   r31,0
    beq-    L024e9f30
    lwz     r11,36(r31)
    lwz     r0,12(r11)
    mtctr   r0
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024e9f34
L024e9f30:
    li      r31,0
L024e9f34:
    lwz     r31,972(r31)
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L024e9f48
    lwz     r3,440(r3)
L024e9f48:
    lwz     r5,1556(r3)
    mr      r3,r31
    lwz     r5,16(r5)
    li      r4,5
    bl      ext_024a6b10
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
