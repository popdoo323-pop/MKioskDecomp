# Converted from the disassembly of 0x024dcb08 (216 bytes). Name is a placeholder.
    .text
    .globl Batch_024dcb08
Batch_024dcb08:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    mr      r30,r3
    stw     r31,20(r1)
    stw     r0,28(r1)
    bl      ext_024dca6c
    li      r29,0
    li      r0,1
    stw     r29,1376(r30)
    lwz     r9,1376(r30)
    stb     r0,1381(r30)
    lis     r12,4121
    stb     r29,1373(r30)
    stb     r29,1460(r30)
    stb     r29,1473(r30)
    lwz     r12,30556(r12)
    stw     r9,8(r1)
    lwz     r7,0(r12)
    lwz     r0,308(r7)
    rlwinm. r10,r0,0,29,29
    bne-    L024dcb9c
    stb     r29,24(r30)
    li      r31,0
    stb     r29,25(r30)
    bl      ext_02041f68
    addi    r4,r1,8
    stw     r29,8(r1)
    bl      ext_02042b38
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
L024dcb9c:
    lwz     r31,0(r12)
    stb     r29,25(r30)
    stb     r29,24(r30)
    bl      ext_02041f68
    addi    r4,r1,8
    stw     r29,8(r1)
    bl      ext_02042b38
    cmpwi   r31,0
    beq-    L024dcbc4
    stb     r29,320(r31)
L024dcbc4:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
