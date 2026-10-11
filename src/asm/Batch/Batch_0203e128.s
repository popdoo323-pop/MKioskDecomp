# Converted from the disassembly of 0x0203e128 (144 bytes). Name is a placeholder.
    .text
    .globl Batch_0203e128
Batch_0203e128:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r11,0(r4)
    cmpwi   r11,11
    mr      r31,r3
    bne-    L0203e1a0
    lis     r4,4096
    lwz     r3,40(r31)
    addi    r4,r4,19612
    bl      ext_02051068
    lwz     r0,168(r31)
    mr      r30,r3
    cmplw   r0,r30
    beq-    L0203e1a0
    lwz     r12,0(r31)
    lwz     r0,172(r12)
    mtctr   r0
    mr      r3,r31
    li      r4,0
    bctrl
    stw     r30,168(r31)
    li      r0,0
    mr      r3,r31
    stb     r0,221(r31)
    bl      ext_0203dd2c
    mr      r3,r31
    bl      ext_0203e00c
L0203e1a0:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
