# Converted from the disassembly of 0x024eb850 (144 bytes). Name is a placeholder.
    .text
    .globl Batch_024eb850
Batch_024eb850:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024eb87c
    li      r3,32
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024eb8c4
L024eb87c:
    mr.     r3,r31
    li      r30,0
    bne-    L024eb898
    li      r3,16
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024eb8a8
L024eb898:
    stw     r30,4(r3)
    stw     r30,8(r3)
    stw     r30,0(r3)
    stw     r30,12(r3)
L024eb8a8:
    addic.  r0,r31,16
    beq-    L024eb8c4
    stw     r0,0(r31)
    li      r12,2
    stw     r30,8(r31)
    stw     r12,4(r31)
    stw     r30,12(r31)
L024eb8c4:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
