# Converted from the disassembly of 0x02006ca4 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_02006ca4
Batch_02006ca4:
    lwz     r12,56(r3)
    lwz     r11,184(r12)
    cmplwi  r11,2
    bgtlr-
    addis   r12,r11,4096
    lbz     r0,1936(r12)
    stw     r0,0(r4)
    blr
