# Converted from the disassembly of 0x0201fbb0 (300 bytes). Name is a placeholder.
    .text
    .globl Batch_0201fbb0
Batch_0201fbb0:
    stwu    r1,-48(r1)
    mflr    r0
    stmw    r27,28(r1)
    mr.     r28,r4
    mr      r30,r6
    stw     r0,52(r1)
    mr      r29,r5
    beq-    L0201fcc8
    bl      ext_020fe070
    mr      r4,r3
    addi    r3,r1,16
    bl      ext_0254a2ec
    addi    r3,r1,8
    bl      ext_0254a2ac
    lwz     r8,4(r29)
    li      r27,0
    cmpw    r27,r8
    bge-    L0201fcc8
    b       L0201fc10
L0201fbfc:
    cmpwi   r27,0
    beq-    L0201fc10
    addi    r0,r8,-1
    cmplw   r27,r0
    bne-    L0201fc3c
L0201fc10:
    lwz     r9,0(r29)
    cmpw    r9,r8
    bge-    L0201fcbc
    lwz     r0,8(r29)
    slwi    r12,r9,2
    stwx    r28,r12,r0
    lwz     r6,0(r29)
    lwz     r8,4(r29)
    addi    r6,r6,1
    stw     r6,0(r29)
    b       L0201fcbc
L0201fc3c:
    li      r3,52
    bl      ext_0260128c
    cmpwi   r3,0
    mr      r31,r3
    beq-    L0201fc58
    bl      ext_020fc128
    mr      r31,r3
L0201fc58:
    lis     r5,4096
    addi    r4,r1,8
    addi    r5,r5,10344
    addi    r3,r1,16
    bl      ext_0254a65c
    lwz     r10,0(r31)
    lwz     r0,20(r10)
    mtctr   r0
    mr      r3,r31
    addi    r4,r1,8
    bctrl
    mr      r3,r31
    bl      ext_02021828
    stb     r30,48(r31)
    lwz     r9,0(r29)
    lwz     r8,4(r29)
    cmpw    r9,r8
    bge-    L0201fcbc
    lwz     r0,8(r29)
    slwi    r12,r9,2
    stwx    r31,r12,r0
    lwz     r6,0(r29)
    lwz     r8,4(r29)
    addi    r6,r6,1
    stw     r6,0(r29)
L0201fcbc:
    addi    r27,r27,1
    cmpw    r27,r8
    blt+    L0201fbfc
L0201fcc8:
    lmw     r27,28(r1)
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
