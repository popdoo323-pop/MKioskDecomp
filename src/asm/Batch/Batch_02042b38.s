# Converted from the disassembly of 0x02042b38 (348 bytes). Name is a placeholder.
    .text
    .globl Batch_02042b38
Batch_02042b38:
    mflr    r0
    stwu    r1,-40(r1)
    stfd    f31,24(r1)
    ps_merge10 f31,f31,f31
    stw     r31,20(r1)
    lis     r9,4117
    stw     r29,12(r1)
    stfs    f31,32(r1)
    stw     r30,16(r1)
    stw     r0,44(r1)
    lbz     r7,-28976(r9)
    mr      r30,r3
    cmpwi   r7,0
    mr      r31,r4
    beq-    L02042c6c
    lwz     r12,344(r30)
    lwz     r0,0(r31)
    cmplw   r12,r0
    beq-    L02042c6c
    cmpw    r12,r0
    lis     r29,4117
    bge-    L02042c44
    cmplwi  r0,1
    blt-    L02042c28
    beq-    L02042bf8
    cmplwi  r0,3
    blt-    L02042bd8
    bne-    L02042c28
    mr      r3,r30
    bl      ext_02042680
    li      r4,5
    bl      ext_02038dc0
    lwz     r3,-28988(r29)
    cmpwi   r3,0
    beq-    L02042bd8
    lwz     r10,0(r3)
    lwz     r11,124(r10)
    mtctr   r11
    li      r4,5
    bctrl
L02042bd8:
    mr      r3,r30
    bl      ext_02042680
    li      r4,5
    bl      ext_02038d38
    lwz     r3,-28988(r29)
    cmpwi   r3,0
    beq-    L02042bf8
    bl      ext_0205bf00
L02042bf8:
    lis     r8,4096
    mr      r3,r30
    lfs     f31,21704(r8)
    bl      ext_02042680
    fmr     f1,f31
    li      r4,5
    bl      ext_02038ea0
    mr      r3,r30
    bl      ext_02042680
    fmr     f1,f31
    li      r4,5
    bl      ext_02038f48
L02042c28:
    li      r0,0
    stw     r0,348(r30)
    lwz     r0,0(r31)
    stw     r0,344(r30)
    lwz     r12,0(r31)
    stw     r12,340(r30)
    b       L02042c6c
L02042c44:
    cmplwi  r0,1
    bgt-    L02042c5c
    lwz     r3,-28988(r29)
    cmpwi   r3,0
    beq-    L02042c5c
    bl      ext_0205bfc8
L02042c5c:
    li      r0,5
    stw     r0,348(r30)
    lwz     r12,0(r31)
    stw     r12,340(r30)
L02042c6c:
    lwz     r29,12(r1)
    lfs     f31,32(r1)
    lwz     r30,16(r1)
    lfd     f31,24(r1)
    lwz     r31,20(r1)
    isync
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
