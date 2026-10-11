# Converted from the disassembly of 0x024dbfc0 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024dbfc0
Batch_024dbfc0:
    li      r11,-1
    li      r12,2
    stw     r11,64(r3)
    li      r0,0
    stw     r12,4(r3)
    lwz     r9,4(r3)
    stw     r0,12(r3)
    lwz     r10,12(r3)
    li      r9,1
    stw     r0,48(r3)
    lwz     r10,48(r3)
    stw     r9,56(r3)
    lwz     r10,56(r3)
    stw     r0,60(r3)
    lwz     r9,60(r3)
    stw     r0,8(r3)
    stw     r0,52(r3)
    stw     r0,20(r3)
    stw     r11,24(r3)
    stw     r11,0(r3)
    mtctr   r12
    stw     r0,16(r3)
    addi    r10,r3,28
    stw     r0,28(r3)
L024dc020:
    stwu    r11,4(r10)
    stw     r0,8(r10)
    bdnz+   L024dc020
    blr
