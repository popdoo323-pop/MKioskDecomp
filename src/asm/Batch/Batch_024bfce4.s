# Converted from the disassembly of 0x024bfce4 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_024bfce4
Batch_024bfce4:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r31,r4
    stw     r0,28(r1)
    lwz     r10,0(r31)
    mr      r30,r3
    addi    r4,r1,8
    stw     r10,8(r1)
    bl      ext_024bfc80
    lwz     r12,0(r31)
    cmpwi   r12,2
    bne-    L024bfd28
    li      r0,1
    stb     r0,298(r30)
    b       L024bfd38
L024bfd28:
    cmpwi   r12,3
    bne-    L024bfd38
    li      r0,1
    stb     r0,299(r30)
L024bfd38:
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
