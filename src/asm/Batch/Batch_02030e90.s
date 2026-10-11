# Converted from the disassembly of 0x02030e90 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_02030e90
Batch_02030e90:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    li      r31,0
    mr      r30,r3
    stw     r0,20(r1)
    bl      ext_0201528c
    cmpwi   r3,0
    blt-    L02030ed8
    bl      ext_0201528c
    lwz     r0,112(r30)
    lis     r12,4120
    lwz     r12,-12396(r12)
    add     r0,r12,r0
    cmpw    r3,r0
    bge-    L02030ed8
    li      r31,1
L02030ed8:
    lwz     r0,20(r1)
    clrlwi  r3,r31,24
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
