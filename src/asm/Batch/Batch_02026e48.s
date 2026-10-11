# Converted from the disassembly of 0x02026e48 (40 bytes). Name is a placeholder.
    .text
    .globl Batch_02026e48
Batch_02026e48:
    lwz     r12,16(r3)
    cmpwi   r12,0
    li      r0,0
    beq-    L02026e68
    lbz     r12,292(r12)
    cmpwi   r12,0
    beq-    L02026e68
    li      r0,1
L02026e68:
    clrlwi  r3,r0,24
    blr
