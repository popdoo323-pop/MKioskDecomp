# Converted from the disassembly of 0x02042960 (124 bytes). Name is a placeholder.
    .text
    .globl Batch_02042960
Batch_02042960:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r12,4121
    stw     r0,20(r1)
    lwz     r12,30564(r12)
    lwz     r9,328(r12)
    lwz     r0,372(r9)
    mr      r31,r3
    cmpwi   r0,4
    li      r0,1
    beq-    L02042994
    mr      r0,r4
L02042994:
    cmpwi   r0,0
    li      r12,1
    stb     r0,353(r31)
    bne-    L020429b4
    lbz     r0,354(r31)
    cmpwi   r0,0
    bne-    L020429b4
    li      r12,0
L020429b4:
    mr      r3,r31
    stb     r12,352(r31)
    bl      ext_02042680
    lbz     r4,352(r31)
    bl      ext_02039370
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
