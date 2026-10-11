# Converted from the disassembly of 0x02017b20 (136 bytes). Name is a placeholder.
    .text
    .globl Batch_02017b20
Batch_02017b20:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    bne-    L02017b50
    li      r3,172
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02017b8c
L02017b50:
    mr      r4,r30
    mr      r3,r31
    bl      ext_0201561c
    lis     r12,4096
    li      r0,0
    lfs     f0,5832(r12)
    lis     r12,4096
    stb     r0,169(r31)
    addi    r12,r12,5908
    stw     r0,152(r31)
    stw     r12,0(r31)
    stw     r0,160(r31)
    stw     r0,164(r31)
    stb     r0,168(r31)
    stfs    f0,156(r31)
L02017b8c:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
