# Converted from the disassembly of 0x0203b114 (136 bytes). Name is a placeholder.
    .text
    .globl Batch_0203b114
Batch_0203b114:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    beq-    L0203b184
    lwz     r3,92(r30)
    lis     r9,4096
    addi    r9,r9,18976
    cmpwi   r3,0
    stw     r9,0(r30)
    beq-    L0203b168
    lwz     r11,140(r3)
    lwz     r0,12(r11)
    mtctr   r0
    li      r4,3
    bctrl
    li      r0,0
    stw     r0,92(r30)
L0203b168:
    mr      r3,r30
    li      r4,0
    bl      ext_0203a444
    clrlwi. r0,r31,31
    beq-    L0203b184
    mr      r3,r30
    bl      ext_026014bc
L0203b184:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
