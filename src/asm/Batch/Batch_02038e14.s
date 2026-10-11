# Converted from the disassembly of 0x02038e14 (116 bytes). Name is a placeholder.
    .text
    .globl Batch_02038e14
Batch_02038e14:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r28,8(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r30,r3
    stw     r0,28(r1)
    lbz     r0,548(r30)
    cmpwi   r0,0
    mr      r31,r4
    beq-    L02038e68
    li      r29,13
    li      r28,0
L02038e4c:
    mr      r5,r31
    mr      r4,r28
    mr      r3,r30
    bl      ext_02038dd8
    addic.  r29,r29,-1
    addi    r28,r28,1
    bne+    L02038e4c
L02038e68:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
