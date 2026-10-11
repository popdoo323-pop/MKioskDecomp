# Converted from the disassembly of 0x024dd900 (212 bytes). Name is a placeholder.
    .text
    .globl Batch_024dd900
Batch_024dd900:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    lis     r12,4121
    stw     r0,28(r1)
    lwz     r12,30556(r12)
    lwz     r7,0(r12)
    lwz     r8,308(r7)
    rlwinm. r0,r8,0,29,29
    mr      r31,r3
    bne-    L024dd978
    li      r30,0
    stb     r30,25(r31)
    stb     r30,24(r31)
    bl      ext_02041f68
    lwz     r0,1376(r31)
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_02042b38
    lbz     r3,1380(r31)
    bl      ext_024af088
    li      r0,1
    stb     r0,1381(r31)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L024dd978:
    li      r9,0
    lwz     r30,0(r12)
    stb     r9,25(r31)
    stb     r9,24(r31)
    bl      ext_02041f68
    lwz     r0,1376(r31)
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_02042b38
    cmpwi   r30,0
    beq-    L024dd9ac
    lbz     r11,1373(r31)
    stb     r11,320(r30)
L024dd9ac:
    lbz     r3,1380(r31)
    bl      ext_024af088
    li      r0,1
    stb     r0,1381(r31)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
