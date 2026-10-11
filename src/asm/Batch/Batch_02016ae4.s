# Converted from the disassembly of 0x02016ae4 (40 bytes). Name is a placeholder.
    .text
    .globl Batch_02016ae4
Batch_02016ae4:
    lwz     r0,124(r3)
    cmplwi  r0,2
    bgtlr-
    lis     r12,4096
    addi    r12,r12,4924
    li      r11,1
    lbzx    r0,r12,r0
    stb     r11,39(r3)
    stb     r0,64(r3)
    blr
