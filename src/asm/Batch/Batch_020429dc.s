# Converted from the disassembly of 0x020429dc (120 bytes). Name is a placeholder.
    .text
    .globl Batch_020429dc
Batch_020429dc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r9,r4
    stw     r0,20(r1)
    lwz     r10,0(r9)
    addi    r4,r1,8
    mr      r31,r3
    stw     r10,8(r1)
    bl      ext_02042914
    cmpwi   r3,0
    bne-    L02042a40
    lwz     r8,296(r31)
    li      r0,1
    stb     r0,336(r31)
    stw     r8,300(r31)
    lwz     r12,0(r9)
    cmpwi   r12,103
    stw     r12,296(r31)
    bne-    L02042a38
    mr      r3,r31
    li      r4,1
    bl      ext_02042960
L02042a38:
    lwz     r11,324(r31)
    stw     r11,320(r31)
L02042a40:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
