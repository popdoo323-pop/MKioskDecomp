# Converted from the disassembly of 0x024d5e00 (136 bytes). Name is a placeholder.
    .text
    .globl Batch_024d5e00
Batch_024d5e00:
    lwz     r0,108(r3)
    li      r12,0
    cmpwi   r0,0
    blelr-
    lis     r11,4107
    mtctr   r0
    lfs     f0,-17468(r11)
    li      r5,0
L024d5e20:
    lwz     r6,92(r3)
    cmpwi   r6,0
    beq-    L024d5e54
    lwz     r7,96(r3)
    cmplw   r12,r7
    bge-    L024d5e54
    mullw   r8,r6,r12
    mulli   r9,r8,12
    lwz     r10,100(r3)
    lwzx    r0,r10,r9
    cmplw   r0,r4
    bne-    L024d5e7c
    b       L024d5e64
L024d5e54:
    lwz     r11,100(r3)
    lwz     r0,0(r11)
    cmplw   r0,r4
    bne-    L024d5e7c
L024d5e64:
    stw     r5,160(r3)
    stfs    f0,176(r3)
    stfs    f0,180(r3)
    stw     r12,172(r3)
    stw     r5,168(r3)
    stw     r12,164(r3)
L024d5e7c:
    addi    r12,r12,1
    bdnz+   L024d5e20
    blr
