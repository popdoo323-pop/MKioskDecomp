# Converted from the disassembly of 0x024e1f54 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024e1f54
Batch_024e1f54:
    mflr    r0
    stw     r0,4(r1)
    lis     r8,4119
    stwu    r1,-8(r1)
    lwzu    r10,27208(r8)
    lis     r12,4119
    cmpwi   r10,0
    addi    r12,r12,28424
    bne-    L024e1f8c
    lis     r11,4107
    li      r9,1
    addi    r11,r11,-12216
    stw     r9,0(r8)
    stw     r11,0(r12)
L024e1f8c:
    cmplw   r4,r12
    bne-    L024e1f9c
    li      r3,1
    b       L024e1fb4
L024e1f9c:
    cmplw   r4,r12
    li      r3,1
    beq-    L024e1fb0
    mr      r3,r4
    bl      ext_024e1ef4
L024e1fb0:
    clrlwi  r3,r3,24
L024e1fb4:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
