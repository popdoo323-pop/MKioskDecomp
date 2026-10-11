# Converted from the disassembly of 0x02016230 (40 bytes). Name is a placeholder.
    .text
    .globl Batch_02016230
Batch_02016230:
    lwz     r12,104(r3)
    lwz     r0,68(r12)
    li      r3,0
    cmpwi   r0,-1
    beqlr-
    lwz     r11,68(r12)
    xori    r12,r11,12
    cntlzw  r0,r12
    srwi    r3,r0,5
    blr
