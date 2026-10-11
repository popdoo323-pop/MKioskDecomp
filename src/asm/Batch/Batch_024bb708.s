# Converted from the disassembly of 0x024bb708 (320 bytes). Name is a placeholder.
    .text
    .globl Batch_024bb708
Batch_024bb708:
    mflr    r0
    stwu    r1,-136(r1)
    stw     r10,52(r1)
    stw     r31,132(r1)
    stw     r8,44(r1)
    stw     r5,32(r1)
    stw     r3,24(r1)
    stw     r0,140(r1)
    stw     r28,120(r1)
    stw     r30,128(r1)
    stw     r6,36(r1)
    stw     r9,48(r1)
    stw     r29,124(r1)
    stw     r4,28(r1)
    stw     r7,40(r1)
    bne-    cr1,0x24bb768
    stfd    f3,72(r1)
    stfd    f7,104(r1)
    stfd    f6,96(r1)
    stfd    f2,64(r1)
    stfd    f4,80(r1)
    stfd    f8,112(r1)
    stfd    f5,88(r1)
    stfd    f1,56(r1)
    mr.     r31,r3
    mr      r30,r4
    bne-    L024bb784
    li      r3,44
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024bb824
L024bb784:
    mr.     r29,r31
    li      r28,0
    bne-    L024bb7a0
    li      r3,44
    bl      ext_0260128c
    mr.     r29,r3
    beq-    L024bb7ec
L024bb7a0:
    mr.     r3,r29
    bne-    L024bb7b8
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024bb7d8
L024bb7b8:
    lis     r6,4107
    addi    r5,r29,12
    addi    r6,r6,-32728
    stw     r5,0(r3)
    li      r7,32
    stw     r6,4(r3)
    stw     r7,8(r3)
    stb     r28,43(r29)
L024bb7d8:
    lis     r8,4107
    lwz     r9,0(r29)
    addi    r8,r8,-32656
    stw     r8,4(r29)
    stb     r28,0(r9)
L024bb7ec:
    lis     r10,4107
    li      r0,2
    addi    r10,r10,-32504
    addi    r12,r1,24
    stw     r10,4(r31)
    addi    r11,r1,144
    stw     r12,16(r1)
    stb     r0,8(r1)
    addi    r5,r1,8
    mr      r3,r31
    stw     r11,12(r1)
    mr      r4,r30
    stb     r28,9(r1)
    bl      ext_026202fc
L024bb824:
    lwz     r28,120(r1)
    lwz     r29,124(r1)
    lwz     r0,140(r1)
    mr      r3,r31
    lwz     r30,128(r1)
    mtlr    r0
    lwz     r31,132(r1)
    addi    r1,r1,136
    blr
