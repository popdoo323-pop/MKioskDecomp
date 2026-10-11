# Converted from the disassembly of 0x02017688 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_02017688
Batch_02017688:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r12,0(r3)
    lwz     r0,380(r12)
    mtctr   r0
    mr      r31,r3
    bctrl
    mr      r3,r31
    bl      ext_020184ec
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
