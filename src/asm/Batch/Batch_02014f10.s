# Converted from the disassembly of 0x02014f10 (412 bytes). Name is a placeholder.
    .text
    .globl Batch_02014f10
Batch_02014f10:
    stwu    r1,-64(r1)
    stmw    r27,12(r1)
    mflr    r0
    stfd    f30,32(r1)
    ps_merge10 f30,f30,f30
    stfs    f30,40(r1)
    stfd    f31,48(r1)
    stw     r0,68(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,56(r1)
    lis     r6,4096
    lfs     f31,4304(r6)
    mr      r27,r3
    lhz     r31,0(r4)
    mr      r28,r5
    lhz     r5,2(r4)
    mr      r4,r31
    fmr     f30,f31
    bl      ext_020062f0
    lhz     r30,0(r28)
    mr      r29,r3
    mr      r3,r27
    lhz     r5,2(r28)
    mr      r4,r30
    bl      ext_020062f0
    cmplw   r31,r30
    mr      r28,r3
    bne-    L0201507c
    cmplw   r29,r28
    li      r31,0
    beq-    L02015080
    lis     r5,4096
    lfs     f31,4344(r5)
L02014f94:
    lbz     r0,816(r29)
    cmpwi   r0,0
    beq-    L02014fb4
    lwz     r12,44(r29)
    cmpwi   r12,0
    li      r7,0
    ble-    L02015058
    b       L02014fc4
L02014fb4:
    lwz     r12,40(r29)
    cmpwi   r12,0
    li      r7,0
    ble-    L02015058
L02014fc4:
    li      r8,0
L02014fc8:
    cmpwi   r0,0
    beq-    L02014ff4
    cmplwi  r7,10
    addi    r9,r29,88
    bge-    L02014fe4
    add     r9,r9,r8
    b       L02015004
L02014fe4:
    lhz     r4,0(r9)
    cmplw   r4,r30
    bne-    L02015048
    b       L02015010
L02014ff4:
    cmplwi  r7,10
    addi    r9,r29,48
    bge-    L02015004
    add     r9,r9,r8
L02015004:
    lhz     r4,0(r9)
    cmplw   r4,r30
    bne-    L02015048
L02015010:
    cmplwi  r7,10
    addi    r11,r29,324
    bge-    L02015020
    add     r11,r11,r8
L02015020:
    lfs     f0,0(r11)
    lhz     r5,2(r9)
    fadds   f30,f30,f0
    mr      r3,r27
    bl      ext_020062f0
    addi    r31,r31,1
    cmpwi   r31,50
    mr      r29,r3
    blt-    L0201506c
    b       L02015064
L02015048:
    addic.  r12,r12,-1
    addi    r7,r7,1
    addi    r8,r8,4
    bne+    L02014fc8
L02015058:
    addi    r31,r31,1
    cmpwi   r31,50
    blt-    L0201506c
L02015064:
    fmr     f1,f31
    b       L02015084
L0201506c:
    cmplw   r29,r28
    bne+    L02014f94
    fmr     f1,f30
    b       L02015084
L0201507c:
    fmr     f30,f31
L02015080:
    fmr     f1,f30
L02015084:
    lmw     r27,12(r1)
    lfs     f30,40(r1)
    lfs     f31,56(r1)
    lfd     f30,32(r1)
    lfd     f31,48(r1)
    isync
    lwz     r0,68(r1)
    mtlr    r0
    addi    r1,r1,64
    blr
