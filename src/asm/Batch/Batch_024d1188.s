# Converted from the disassembly of 0x024d1188 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_024d1188
Batch_024d1188:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r3,0
    stwu    r1,-8(r1)
    bne-    L024d11ac
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024d11c0
L024d11ac:
    li      r0,-1
    li      r11,0
    stw     r0,0(r3)
    stb     r11,8(r3)
    stw     r11,4(r3)
L024d11c0:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
