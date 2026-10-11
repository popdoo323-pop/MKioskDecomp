# Converted from the disassembly of 0x024bac08 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_024bac08
Batch_024bac08:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r28,8(r1)
    mr      r28,r3
    stw     r31,20(r1)
    stw     r30,16(r1)
    addi    r30,r28,1872
    stw     r29,12(r1)
    li      r31,0
    stw     r0,28(r1)
    li      r29,2
L024bac34:
    mr      r3,r30
    bl      ext_024b8000
    stb     r31,160(r30)
    addic.  r29,r29,-1
    addi    r30,r30,220
    bne+    L024bac34
    li      r0,1
    stb     r0,2313(r28)
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
