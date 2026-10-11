# Converted from the disassembly of 0x0203f814 (488 bytes). Name is a placeholder.
    .text
    .globl Batch_0203f814
Batch_0203f814:
    stwu    r1,-40(r1)
    stmw    r27,20(r1)
    mflr    r0
    mr      r31,r4
    mr      r30,r6
    mr      r28,r3
    stw     r0,44(r1)
    mr      r29,r5
    bl      ext_0203d410
    lwz     r7,152(r3)
    cmpwi   r7,5
    blt-    L0203f850
    lwz     r8,152(r3)
    cmpwi   r8,8
    blt-    L0203f8a4
L0203f850:
    cmplwi  r29,4
    addi    r10,r28,92
    bge-    L0203f87c
    mulli   r7,r29,12
    li      r8,-1
    add     r12,r10,r7
    cmplwi  r29,4
    stw     r8,4(r12)
    lwz     r0,4(r12)
    blt-    L0203f890
L0203f878:
    b       L0203f898
L0203f87c:
    li      r8,-1
    cmplwi  r29,4
    stw     r8,4(r10)
    lwz     r0,4(r10)
    bge+    L0203f878
L0203f890:
    mulli   r7,r29,12
    add     r10,r10,r7
L0203f898:
    li      r8,-1
    stw     r8,8(r10)
    lwz     r9,8(r10)
L0203f8a4:
    lwz     r10,0(r31)
    cmpwi   r10,0
    bne-    L0203f8b8
    lwz     r0,228(r28)
    stw     r0,0(r31)
L0203f8b8:
    lis     r12,4096
    lfs     f0,19504(r12)
    stfs    f0,268(r28)
    stfs    f0,264(r28)
    lwz     r12,0(r31)
    cmplwi  r12,12
    li      r27,0
    bgt-    L0203f98c
    slwi    r12,r12,2
    addis   r7,r12,516
    addi    r7,r7,-1812
    mtctr   r7
    bctr
    b       L0203f96c
    b       L0203f98c
    b       L0203f98c
    b       L0203f944
    b       L0203f98c
    b       L0203f95c
    b       L0203f98c
    b       L0203f95c
    b       L0203f920
    b       L0203f9e8
    b       L0203f944
    b       L0203f9e8
    b       L0203f95c
L0203f920:
    cmplwi  r29,4
    addi    r11,r28,92
    bge-    L0203f934
    mulli   r8,r29,12
    add     r11,r11,r8
L0203f934:
    lwz     r9,4(r11)
    cmpwi   r9,8
    bne-    L0203f95c
    b       L0203f9e8
L0203f944:
    mr      r3,r28
    bl      ext_0203d410
    lwz     r10,108(r3)
    cmpwi   r10,15
    bne-    L0203f98c
    b       L0203f9e8
L0203f95c:
    cmpwi   r30,0
    li      r27,1
    beq-    L0203f998
    b       L0203f994
L0203f96c:
    cmplwi  r29,4
    addi    r12,r28,92
    bge-    L0203f980
    mulli   r10,r29,12
    add     r12,r12,r10
L0203f980:
    lwz     r0,4(r12)
    cmpwi   r0,8
    beq-    L0203f9e8
L0203f98c:
    cmpwi   r30,0
    beq-    L0203f998
L0203f994:
    stw     r29,140(r28)
L0203f998:
    mr      r3,r28
    cmpwi   r27,0
    lwz     r0,0(r31)
    mr      r5,r29
    beq-    L0203f9dc
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_0203d418
    lwz     r9,0(r31)
    mr      r6,r30
    stw     r9,8(r1)
    bl      ext_0203f6e8
    lmw     r27,20(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
L0203f9dc:
    addi    r4,r1,12
    stw     r0,12(r1)
    bl      ext_0203d500
L0203f9e8:
    lmw     r27,20(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
