# Converted from the disassembly of 0x02016e34 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_02016e34
Batch_02016e34:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    li      r11,0
    stw     r0,20(r1)
    lwz     r9,104(r31)
    stb     r11,120(r31)
    lwz     r12,68(r9)
    cmpwi   r12,-1
    beq-    L02016e88
    lwz     r0,68(r9)
    cmpwi   r0,10
    bne-    L02016e88
    lwz     r3,88(r31)
    li      r4,100
    bl      ext_02008eb0
    cmpwi   r3,30
    mfcr    r10
    srwi    r0,r10,31
    stb     r0,120(r31)
L02016e88:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
