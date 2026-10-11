# Converted from the disassembly of 0x024bab18 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_024bab18
Batch_024bab18:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r31,r4
    mr      r30,r3
    stw     r0,20(r1)
    cmpwi   r31,1
    stb     r31,4(r30)
    beq-    L024bab58
    lbz     r0,6(r30)
    clrlwi  r11,r31,24
    and.    r12,r0,r11
    bne-    L024bab58
    mr      r3,r30
    bl      ext_024baaf4
L024bab58:
    stb     r31,6(r30)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
