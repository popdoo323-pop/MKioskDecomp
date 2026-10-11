# Converted from the disassembly of 0x020161b8 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_020161b8
Batch_020161b8:
    lwz     r7,104(r3)
    lwz     r0,80(r7)
    cmpwi   r0,1
    li      r3,0
    beq-    L020161d4
    cmpwi   r0,2
    bne-    L020161fc
L020161d4:
    lwz     r11,76(r7)
    cmpwi   r11,2
    li      r3,1
    beq-    L020161f4
    lwz     r12,76(r7)
    cmpwi   r12,19
    beq-    L020161f4
    li      r3,0
L020161f4:
    clrlwi  r3,r3,24
    blr
L020161fc:
    lwz     r9,68(r7)
    cmpwi   r9,-1
    beqlr-
    lwz     r8,68(r7)
    cmpwi   r8,2
    li      r3,1
    beq-    L02016228
    lwz     r10,68(r7)
    cmpwi   r10,19
    beq-    L02016228
    li      r3,0
L02016228:
    clrlwi  r3,r3,24
    blr
