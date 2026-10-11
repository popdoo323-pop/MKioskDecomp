# Converted from the disassembly of 0x02038ea0 (168 bytes). Name is a placeholder.
    .text
    .globl Batch_02038ea0
Batch_02038ea0:
    stwu    r1,-40(r1)
    mflr    r0
    stfd    f31,24(r1)
    ps_merge10 f31,f31,f31
    stw     r31,20(r1)
    mr      r31,r3
    stfs    f31,32(r1)
    fmr     f31,f1
    stw     r28,8(r1)
    mr      r28,r4
    stw     r30,16(r1)
    stw     r29,12(r1)
    li      r30,4
    stw     r0,44(r1)
    li      r29,1
    b       L02038ee8
L02038ee0:
    cmpwi   r29,3
    beq-    L02038f0c
L02038ee8:
    lwz     r0,460(r31)
    cmplw   r29,r0
    li      r3,0
    bge-    L02038f00
    lwz     r12,468(r31)
    lwzx    r3,r12,r30
L02038f00:
    fmr     f1,f31
    mr      r4,r28
    bl      ext_0262efe0
L02038f0c:
    addi    r29,r29,1
    cmplwi  r29,13
    addi    r30,r30,4
    blt+    L02038ee0
    lwz     r28,8(r1)
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
