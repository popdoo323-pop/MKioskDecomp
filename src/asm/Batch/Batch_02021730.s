# Converted from the disassembly of 0x02021730 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_02021730
Batch_02021730:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L0202175c
    li      r3,20
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0202178c
L0202175c:
    mr.     r3,r31
    li      r30,0
    bne-    L02021778
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02021784
L02021778:
    stw     r30,4(r3)
    stw     r30,0(r3)
    stw     r30,8(r3)
L02021784:
    stw     r30,16(r31)
    stw     r30,12(r31)
L0202178c:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
