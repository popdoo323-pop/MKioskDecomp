# Converted from the disassembly of 0x0202eb10 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_0202eb10
Batch_0202eb10:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,92(r31)
    bl      ext_0202d630
    lwz     r3,88(r31)
    bl      ext_020070a0
    lwz     r10,80(r31)
    lwz     r3,84(r10)
    bl      ext_02185c90
    cmpwi   r3,0
    beq-    L0202eb68
    lbz     r11,53(r31)
    li      r0,5
    stb     r11,54(r31)
    li      r9,0
    stb     r0,53(r31)
    li      r0,1
    stw     r9,56(r31)
    stb     r0,55(r31)
L0202eb68:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
