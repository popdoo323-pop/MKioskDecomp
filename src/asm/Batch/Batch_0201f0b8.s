# Converted from the disassembly of 0x0201f0b8 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_0201f0b8
Batch_0201f0b8:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r12,0(r3)
    cmplwi  r12,1
    li      r3,0
    blt-    L0201f0e4
    beq-    L0201f0ec
    cmplwi  r12,2
    beq-    L0201f108
    b       L0201f10c
L0201f0e4:
    li      r3,0
    b       L0201f10c
L0201f0ec:
    bl      ext_020150ac
    li      r4,100
    bl      ext_02008eb0
    cmpwi   r3,50
    mfcr    r0
    srwi    r3,r0,31
    b       L0201f10c
L0201f108:
    li      r3,1
L0201f10c:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
