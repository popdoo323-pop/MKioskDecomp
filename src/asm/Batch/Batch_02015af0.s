# Converted from the disassembly of 0x02015af0 (228 bytes). Name is a placeholder.
    .text
    .globl Batch_02015af0
Batch_02015af0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,68(r31)
    lwz     r10,72(r31)
    lwz     r11,4(r12)
    stw     r11,80(r31)
    lwz     r12,60(r10)
    lwz     r12,88(r12)
    stw     r12,84(r31)
    bl      ext_020150ac
    stw     r3,88(r31)
    lwz     r10,60(r3)
    lwz     r0,0(r10)
    stw     r0,92(r31)
    lwz     r9,56(r3)
    stw     r9,76(r31)
    lwz     r0,52(r3)
    lis     r12,4117
    stw     r0,96(r31)
    lwz     r12,-3280(r12)
    cmpwi   r12,0
    beq-    L02015b78
    lwz     r10,1880(r12)
    lwz     r0,108(r31)
    cmplw   r0,r10
    li      r10,0
    bge-    L02015b74
    lwz     r9,1888(r12)
    slwi    r11,r0,2
    lwzx    r10,r11,r9
L02015b74:
    stw     r10,104(r31)
L02015b78:
    li      r0,1
    lis     r10,4096
    stb     r0,39(r31)
    li      r11,0
    lfs     f0,4896(r10)
    stw     r11,112(r31)
    stb     r11,116(r31)
    stw     r11,124(r31)
    stw     r11,128(r31)
    stb     r11,64(r31)
    lis     r11,4117
    stfs    f0,132(r31)
    lwz     r11,-3296(r11)
    lwz     r12,424(r11)
    xori    r0,r12,3
    cntlzw  r0,r0
    srwi    r11,r0,5
    stb     r11,136(r31)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
