# Converted from the disassembly of 0x02026c54 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_02026c54
Batch_02026c54:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020150ac
    stw     r3,12(r31)
    lwz     r6,60(r3)
    lwz     r9,0(r6)
    lwz     r7,8(r31)
    stw     r9,0(r31)
    lwz     r11,52(r3)
    stw     r11,16(r31)
    lwz     r8,0(r7)
    lwz     r10,60(r8)
    lwz     r12,88(r10)
    lwz     r0,92(r12)
    stw     r0,20(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
