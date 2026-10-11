# Converted from the disassembly of 0x024dc060 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_024dc060
Batch_024dc060:
    lwz     r0,0(r3)
    cmpwi   r0,-1
    beq-    L024dc098
    lis     r11,4117
    lwz     r11,3660(r11)
    lwz     r12,16(r11)
    lwz     r10,0(r12)
    cmplw   r0,r10
    lwz     r12,4(r12)
    bge-    L024dc090
    slwi    r0,r0,2
    add     r12,r12,r0
L024dc090:
    lwz     r3,0(r12)
    blr
L024dc098:
    li      r3,0
    blr
