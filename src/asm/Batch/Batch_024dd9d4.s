# Converted from the disassembly of 0x024dd9d4 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_024dd9d4
Batch_024dd9d4:
    li      r8,4
    lwz     r11,164(r3)
    li      r10,1
    mtctr   r8
    li      r9,0
L024dd9e8:
    lwz     r12,220(r3)
    cmplw   r9,r12
    slw     r0,r10,r9
    bne-    L024dda28
    cmpwi   r4,0
    beq-    L024dda14
    or      r11,r11,r0
    addi    r9,r9,1
    stw     r11,164(r3)
    bdnz+   L024dd9e8
    blr
L024dda14:
    andc    r11,r11,r0
    addi    r9,r9,1
    stw     r11,164(r3)
    bdnz+   L024dd9e8
    blr
L024dda28:
    andc    r11,r11,r0
    addi    r9,r9,1
    stw     r11,164(r3)
    bdnz+   L024dd9e8
    blr
