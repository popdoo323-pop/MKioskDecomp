# Converted from the disassembly of 0x0202d394 (148 bytes). Name is a placeholder.
    .text
    .globl Batch_0202d394
Batch_0202d394:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    bne-    L0202d3c4
    li      r3,72
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0202d40c
L0202d3c4:
    mr      r3,r31
    bl      ext_02410f5c
    lis     r0,4096
    stw     r30,36(r31)
    li      r10,0
    addic   r0,r0,14108
    stw     r10,40(r31)
    lis     r12,4096
    stw     r0,0(r31)
    lwz     r11,0(r30)
    lfs     f0,14072(r12)
    stw     r10,56(r31)
    stfs    f0,60(r31)
    stfs    f0,64(r31)
    stw     r11,44(r31)
    stb     r10,68(r31)
    stw     r10,48(r31)
    stw     r10,52(r31)
L0202d40c:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
