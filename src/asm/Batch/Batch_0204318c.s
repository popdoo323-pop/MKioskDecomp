# Converted from the disassembly of 0x0204318c (284 bytes). Name is a placeholder.
    .text
    .globl Batch_0204318c
Batch_0204318c:
    stwu    r1,-32(r1)
    stmw    r27,12(r1)
    mflr    r0
    stw     r0,36(r1)
    mr      r31,r4
    lwz     r12,16(r31)
    lwz     r0,60(r12)
    mr      r30,r3
    mtctr   r0
    mr      r3,r31
    mr      r4,r30
    bctrl
    lwz     r0,8(r31)
    cmplwi  r0,1
    blt-    L020431d8
    beq-    L020431f8
    cmpwi   r0,1
    bne-    L02043228
    b       L0204321c
L020431d8:
    lwz     r10,16(r31)
    lwz     r0,44(r10)
    mtctr   r0
    mr      r3,r31
    addi    r4,r30,212
    bctrl
    lwz     r0,8(r31)
    b       L02043214
L020431f8:
    lwz     r12,212(r30)
    lwz     r8,100(r12)
    mtctr   r8
    lwz     r4,12(r31)
    addi    r3,r30,212
    bctrl
    lwz     r0,8(r31)
L02043214:
    cmpwi   r0,1
    bne-    L02043228
L0204321c:
    lbz     r9,260(r30)
    cmpwi   r9,0
    bne-    L02043294
L02043228:
    lwz     r10,16(r31)
    lwz     r0,20(r10)
    mtctr   r0
    lwz     r27,4(r31)
    addi    r4,r30,212
    mr      r3,r31
    bctrl
    lwz     r29,252(r30)
    addi    r28,r30,248
    cmplw   r29,r28
    beq-    L02043278
L02043254:
    lwz     r3,8(r29)
    lwz     r12,0(r3)
    lwz     r0,92(r12)
    mtctr   r0
    mr      r4,r31
    bctrl
    lwz     r29,4(r29)
    cmplw   r29,r28
    bne+    L02043254
L02043278:
    lwz     r9,16(r31)
    lwz     r10,28(r9)
    mtctr   r10
    mr      r3,r31
    addi    r4,r30,212
    mr      r5,r27
    bctrl
L02043294:
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
