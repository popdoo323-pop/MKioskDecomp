# Converted from the disassembly of 0x0202f828 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_0202f828
Batch_0202f828:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r12,72(r30)
    lwz     r3,84(r12)
    li      r31,1
    bl      ext_0218608c
    cmpwi   r3,0
    bne-    L0202f870
    lwz     r11,72(r30)
    lwz     r3,84(r11)
    bl      ext_02186220
    cmpwi   r3,0
    bne-    L0202f870
    li      r31,0
L0202f870:
    lwz     r0,20(r1)
    clrlwi  r3,r31,24
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
