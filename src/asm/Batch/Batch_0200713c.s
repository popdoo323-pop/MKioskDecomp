# Converted from the disassembly of 0x0200713c (152 bytes). Name is a placeholder.
    .text
    .globl Batch_0200713c
Batch_0200713c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r8,68(r31)
    lwz     r9,88(r31)
    lfs     f0,100(r8)
    stfs    f0,0(r9)
    lfs     f0,104(r8)
    stfs    f0,4(r9)
    lfs     f0,108(r8)
    stfs    f0,8(r9)
    lwz     r8,68(r31)
    lwz     r9,56(r8)
    lwz     r10,88(r31)
    stw     r9,84(r10)
    lwz     r8,68(r31)
    lwz     r12,52(r8)
    lwz     r11,88(r31)
    stw     r12,80(r11)
    lwz     r8,68(r31)
    lwz     r0,48(r8)
    lwz     r12,88(r31)
    stw     r0,88(r12)
    lwz     r3,68(r31)
    bl      ext_0202669c
    cmpwi   r3,0
    beq-    L020071c0
    lwz     r11,88(r31)
    lwz     r0,92(r11)
    ori     r0,r0,256
    stw     r0,92(r11)
L020071c0:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
