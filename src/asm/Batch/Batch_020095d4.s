# Converted from the disassembly of 0x020095d4 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_020095d4
Batch_020095d4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r4,168(r31)
    cmpwi   r4,0
    bgt-    L0200960c
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    li      r3,0
    blr
L0200960c:
    cmpwi   r4,1
    bne-    L0200962c
    lwz     r0,20(r1)
    lwz     r3,116(r31)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L0200962c:
    mr      r3,r31
    bl      ext_02008eb0
    cmplwi  r3,12
    addi    r12,r31,116
    bge-    L02009648
    slwi    r0,r3,2
    add     r12,r12,r0
L02009648:
    lwz     r0,20(r1)
    lwz     r3,0(r12)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
