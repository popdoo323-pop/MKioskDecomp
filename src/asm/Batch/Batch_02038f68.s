# Converted from the disassembly of 0x02038f68 (172 bytes). Name is a placeholder.
    .text
    .globl Batch_02038f68
Batch_02038f68:
    stwu    r1,-40(r1)
    mflr    r0
    stw     r28,8(r1)
    mr      r28,r3
    stw     r31,20(r1)
    stfd    f31,24(r1)
    stw     r30,16(r1)
    ps_merge10 f31,f31,f31
    stw     r29,12(r1)
    lis     r11,4096
    stfs    f31,32(r1)
    li      r31,4
    stw     r0,44(r1)
    mr      r29,r4
    li      r30,1
    lfs     f31,17160(r11)
    b       L02038fb4
L02038fac:
    cmpwi   r30,3
    beq-    L02038fd8
L02038fb4:
    lwz     r0,460(r28)
    cmplw   r30,r0
    li      r3,0
    bge-    L02038fcc
    lwz     r12,468(r28)
    lwzx    r3,r12,r31
L02038fcc:
    fmr     f1,f31
    mr      r4,r29
    bl      ext_0262efe0
L02038fd8:
    addi    r30,r30,1
    cmplwi  r30,14
    addi    r31,r31,4
    blt+    L02038fac
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
