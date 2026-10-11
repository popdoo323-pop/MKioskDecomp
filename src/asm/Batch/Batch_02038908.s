# Converted from the disassembly of 0x02038908 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_02038908
Batch_02038908:
    mflr    r0
    stwu    r1,-40(r1)
    stfd    f31,24(r1)
    stw     r29,12(r1)
    ps_merge10 f31,f31,f31
    stw     r30,16(r1)
    stfs    f31,32(r1)
    mr      r30,r3
    stw     r31,20(r1)
    stw     r0,44(r1)
    lbz     r0,548(r30)
    cmpwi   r0,0
    fmr     f31,f1
    beq-    L0203896c
    li      r29,14
    li      r31,0
L02038948:
    addi    r3,r30,4
    mr      r4,r31
    bl      ext_02598144
    fmr     f1,f31
    li      r4,1
    bl      ext_0259c004
    addic.  r29,r29,-1
    addi    r31,r31,1
    bne+    L02038948
L0203896c:
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
