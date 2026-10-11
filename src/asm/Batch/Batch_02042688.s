# Converted from the disassembly of 0x02042688 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_02042688
Batch_02042688:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    li      r3,0
    stw     r30,8(r1)
    stw     r0,20(r1)
    lbz     r30,354(r31)
    bl      ext_029aef58
    xori    r12,r3,1
    cntlzw  r0,r12
    srwi    r9,r0,5
    cmplw   r9,r30
    stb     r9,354(r31)
    beq-    L020426f4
    lbz     r0,353(r31)
    cmpwi   r0,0
    li      r11,1
    bne-    L020426e0
    cmpwi   r9,0
    bne-    L020426e0
    li      r11,0
L020426e0:
    mr      r3,r31
    stb     r11,352(r31)
    bl      ext_02042680
    lbz     r4,352(r31)
    bl      ext_02039370
L020426f4:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
