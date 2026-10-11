# Converted from the disassembly of 0x024cbc60 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_024cbc60
Batch_024cbc60:
    lwz     r0,120(r3)
    cmplw   r4,r0
    lwz     r12,124(r3)
    bge-    L024cbc78
    mulli   r8,r4,12
    add     r12,r12,r8
L024cbc78:
    lwz     r9,0(r12)
    lwz     r0,4(r12)
    cmpw    r9,r0
    bge-    L024cbca0
    lwz     r8,8(r12)
    slwi    r11,r9,2
    stwx    r5,r11,r8
    lwz     r11,0(r12)
    addi    r11,r11,1
    stw     r11,0(r12)
L024cbca0:
    stw     r3,88(r5)
    blr
