# Converted from the disassembly of 0x02043088 (260 bytes). Name is a placeholder.
    .text
    .globl Batch_02043088
Batch_02043088:
    stwu    r1,-32(r1)
    stmw    r27,12(r1)
    mflr    r0
    stw     r0,36(r1)
    mr      r31,r4
    lwz     r0,8(r31)
    cmplwi  r0,1
    mr      r30,r3
    blt-    L020430bc
    beq-    L020430dc
    cmpwi   r0,1
    beq-    L02043100
    b       L0204310c
L020430bc:
    lwz     r12,16(r31)
    lwz     r0,44(r12)
    mtctr   r0
    mr      r3,r31
    mr      r4,r30
    bctrl
    lwz     r0,8(r31)
    b       L020430f8
L020430dc:
    lwz     r12,0(r30)
    lwz     r0,100(r12)
    mtctr   r0
    lwz     r4,12(r31)
    mr      r3,r30
    bctrl
    lwz     r0,8(r31)
L020430f8:
    cmpwi   r0,1
    bne-    L0204310c
L02043100:
    lbz     r9,48(r30)
    cmpwi   r9,0
    bne-    L02043178
L0204310c:
    lwz     r10,16(r31)
    lwz     r0,20(r10)
    mtctr   r0
    lwz     r27,4(r31)
    mr      r4,r30
    mr      r3,r31
    bctrl
    lwz     r29,40(r30)
    addi    r28,r30,36
    cmplw   r29,r28
    beq-    L0204315c
L02043138:
    lwz     r3,8(r29)
    lwz     r12,0(r3)
    lwz     r0,92(r12)
    mtctr   r0
    mr      r4,r31
    bctrl
    lwz     r29,4(r29)
    cmplw   r29,r28
    bne+    L02043138
L0204315c:
    lwz     r9,16(r31)
    lwz     r0,28(r9)
    mtctr   r0
    mr      r3,r31
    mr      r4,r30
    mr      r5,r27
    bctrl
L02043178:
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
