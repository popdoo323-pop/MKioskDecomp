# Converted from the disassembly of 0x024bb9ec (240 bytes). Name is a placeholder.
    .text
    .globl Batch_024bb9ec
Batch_024bb9ec:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024bba14
    li      r3,160
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024bbac4
L024bba14:
    mr      r3,r31
    bl      ext_024b3a78
    lis     r0,4107
    lis     r6,4107
    addic   r0,r0,-31356
    lfs     f0,-32244(r6)
    li      r10,3
    lis     r8,4124
    stw     r0,52(r31)
    li      r6,-1
    stfs    f0,60(r31)
    addi    r8,r8,25452
    addi    r9,r31,64
    sth     r6,58(r31)
    mtctr   r10
    sth     r6,56(r31)
L024bba54:
    lwz     r11,4(r8)
    stw     r11,4(r9)
    lwz     r12,8(r8)
    stw     r12,8(r9)
    lwz     r0,12(r8)
    stw     r0,12(r9)
    lwzu    r7,16(r8)
    stwu    r7,16(r9)
    bdnz+   L024bba54
    addic.  r3,r31,116
    bne-    L024bba90
    li      r3,44
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024bbac4
L024bba90:
    li      r9,0
    lis     r8,4097
    stb     r9,37(r3)
    addi    r8,r8,-1200
    stw     r9,20(r3)
    stw     r9,32(r3)
    stw     r8,40(r3)
    li      r12,1
    stw     r9,28(r3)
    stb     r12,36(r3)
    stw     r9,0(r3)
    stw     r9,8(r3)
    stw     r9,24(r3)
L024bbac4:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
