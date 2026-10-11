# Converted from the disassembly of 0x0201c830 (196 bytes). Name is a placeholder.
    .text
    .globl Batch_0201c830
Batch_0201c830:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr.     r31,r3
    stw     r0,28(r1)
    bne-    L0201c860
    li      r3,140
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0201c8d4
L0201c860:
    mr.     r29,r31
    bne-    L0201c878
    li      r3,140
    bl      ext_0260128c
    mr.     r29,r3
    beq-    L0201c8c8
L0201c878:
    mr.     r3,r29
    li      r30,0
    bne-    L0201c894
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0201c8b4
L0201c894:
    lis     r9,4096
    addi    r8,r29,12
    addi    r9,r9,6316
    stw     r8,0(r3)
    li      r0,128
    stw     r9,4(r3)
    stw     r0,8(r3)
    stb     r30,139(r29)
L0201c8b4:
    lis     r0,4096
    lwz     r12,0(r29)
    addic   r0,r0,6404
    stw     r0,4(r29)
    stb     r30,0(r12)
L0201c8c8:
    lis     r7,4096
    addi    r7,r7,6428
    stw     r7,4(r31)
L0201c8d4:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
