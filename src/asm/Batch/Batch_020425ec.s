# Converted from the disassembly of 0x020425ec (128 bytes). Name is a placeholder.
    .text
    .globl Batch_020425ec
Batch_020425ec:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r28,8(r1)
    li      r28,4
    li      r30,0
    mr      r31,r3
    stw     r29,12(r1)
    stw     r0,28(r1)
    lis     r29,516
L02042618:
    mr      r3,r30
    addi    r4,r29,9676
    bl      ext_029abfa0
    addic.  r28,r28,-1
    addi    r30,r30,1
    bne+    L02042618
    mr      r3,r31
    bl      ext_020425e4
    cmpwi   r3,0
    beq-    L0204264c
    mr      r3,r31
    bl      ext_020425e4
    bl      ext_0204544c
L0204264c:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
