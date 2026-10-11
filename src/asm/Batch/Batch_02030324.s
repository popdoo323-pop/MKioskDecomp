# Converted from the disassembly of 0x02030324 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_02030324
Batch_02030324:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    li      r31,0
    stw     r0,20(r1)
    bl      ext_0201528c
    cmpwi   r3,0
    blt-    L02030360
    bl      ext_0201528c
    lis     r12,4120
    lwz     r12,-12392(r12)
    mulli   r0,r12,60
    cmpw    r3,r0
    bge-    L02030360
    li      r31,1
L02030360:
    lwz     r0,20(r1)
    clrlwi  r3,r31,24
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
