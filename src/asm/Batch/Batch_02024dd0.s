# Converted from the disassembly of 0x02024dd0 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_02024dd0
Batch_02024dd0:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r3,0(r3)
    lwz     r12,820(r3)
    lwz     r0,20(r12)
    mtctr   r0
    bctrl
    xori    r0,r3,1
    cntlzw  r0,r0
    srwi    r3,r0,5
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
