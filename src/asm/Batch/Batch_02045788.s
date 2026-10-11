# Converted from the disassembly of 0x02045788 (152 bytes). Name is a placeholder.
    .text
    .globl Batch_02045788
Batch_02045788:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r12,4117
    stw     r0,20(r1)
    lwz     r12,-28988(r12)
    cmpwi   r12,0
    mr      r31,r3
    beq-    L0204580c
    lis     r11,4117
    lwz     r11,1072(r11)
    mr      r3,r31
    li      r12,0
    addi    r5,r1,8
    xori    r10,r11,5
    addi    r6,r1,9
    cntlzw  r11,r10
    stb     r12,9(r1)
    srwi    r4,r11,5
    stb     r12,8(r1)
    bl      ext_020455e4
    lbz     r0,8(r1)
    cmpwi   r0,0
    beq-    L020457f4
    addi    r3,r31,90
    li      r4,2
    bl      ext_029a9a78
L020457f4:
    lbz     r0,9(r1)
    cmpwi   r0,0
    beq-    L0204580c
    addi    r3,r31,92
    li      r4,2
    bl      ext_029a9a78
L0204580c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
