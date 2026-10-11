# Converted from the disassembly of 0x02021334 (24 bytes). Name is a placeholder.
    .text
    .globl Batch_02021334
Batch_02021334:
    mulli   r12,r4,12
    add     r0,r12,r5
    slwi    r11,r0,2
    addis   r12,r11,4096
    lwz     r3,9764(r12)
    blr
