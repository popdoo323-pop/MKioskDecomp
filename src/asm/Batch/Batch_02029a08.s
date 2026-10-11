# Converted from the disassembly of 0x02029a08 (152 bytes). Name is a placeholder.
    .text
    .globl Batch_02029a08
Batch_02029a08:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    lwz     r0,280(r29)
    li      r31,0
    cmpw    r31,r0
    bge-    L02029a58
    addi    r30,r29,76
L02029a38:
    lwzu    r3,8(r30)
    cmpwi   r3,0
    beq-    L02029a4c
    bl      ext_020280a0
    lwz     r0,280(r29)
L02029a4c:
    addi    r31,r31,1
    cmpw    r31,r0
    blt+    L02029a38
L02029a58:
    lwz     r12,284(r29)
    li      r30,0
    cmpw    r30,r12
    bge-    L02029a84
    addi    r31,r29,172
L02029a6c:
    lwzu    r3,8(r31)
    bl      ext_020280a0
    lwz     r0,284(r29)
    addi    r30,r30,1
    cmpw    r30,r0
    blt+    L02029a6c
L02029a84:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
