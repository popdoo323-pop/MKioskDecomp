# Converted from the disassembly of 0x0202e900 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_0202e900
Batch_0202e900:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02398bd8
    cmpwi   r3,0
    bne-    L0202e92c
    bl      ext_02398bf8
    cmpwi   r3,0
    beq-    L0202e948
L0202e92c:
    lbz     r10,53(r31)
    li      r11,1
    stb     r11,53(r31)
    stb     r10,54(r31)
    li      r0,0
    stb     r11,55(r31)
    stw     r0,56(r31)
L0202e948:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
