# Converted from the disassembly of 0x024db810 (160 bytes). Name is a placeholder.
    .text
    .globl Batch_024db810
Batch_024db810:
    stwu    r1,-32(r1)
    mflr    r0
    stmw    r26,8(r1)
    mr      r30,r3
    addi    r28,r30,196
    li      r27,0
    li      r26,4
    stw     r0,36(r1)
    addi    r29,r30,200
L024db834:
    lwzu    r31,4(r28)
    mr      r3,r31
    bl      ext_024c1c90
    cmpwi   r3,0
    beq-    L024db86c
    lbz     r0,96(r31)
    cmpwi   r0,0
    beq-    L024db864
    lfs     f1,236(r30)
    mr      r3,r31
    bl      ext_024c1d2c
    li      r27,1
L024db864:
    mr      r3,r31
    bl      ext_02484c94
L024db86c:
    addic.  r26,r26,-1
    bne+    L024db834
    cmpwi   r27,0
    beq-    L024db890
    lwz     r3,0(r29)
    lfs     f1,236(r30)
    bl      ext_024c1d4c
    stfs    f1,236(r30)
    b       L024db89c
L024db890:
    lis     r12,4107
    lfs     f1,-13976(r12)
    stfs    f1,236(r30)
L024db89c:
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
