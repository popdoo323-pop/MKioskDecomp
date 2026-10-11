# Converted from the disassembly of 0x024d5cf0 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024d5cf0
Batch_024d5cf0:
    lwz     r0,92(r3)
    cmpwi   r0,0
    lwz     r10,1680(r3)
    beq-    L024d5d3c
    lwz     r11,96(r3)
    cmplw   r10,r11
    bge-    L024d5d3c
    mullw   r8,r0,r10
    lwz     r10,100(r3)
    mulli   r9,r8,12
    li      r11,0
    stwx    r4,r10,r9
    add     r12,r10,r9
    stw     r11,4(r12)
    stb     r5,8(r12)
    lwz     r12,1680(r3)
    addi    r12,r12,1
    stw     r12,1680(r3)
    blr
L024d5d3c:
    lwz     r12,100(r3)
    li      r11,0
    stw     r4,0(r12)
    stw     r11,4(r12)
    stb     r5,8(r12)
    lwz     r12,1680(r3)
    addi    r12,r12,1
    stw     r12,1680(r3)
    blr
