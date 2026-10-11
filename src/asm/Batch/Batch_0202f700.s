# Converted from the disassembly of 0x0202f700 (176 bytes). Name is a placeholder.
    .text
    .globl Batch_0202f700
Batch_0202f700:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02398bd8
    cmpwi   r3,0
    bne-    L0202f79c
    bl      ext_02398bf8
    cmpwi   r3,0
    bne-    L0202f738
    bl      ext_02398c18
    cmpwi   r3,0
    beq-    L0202f79c
L0202f738:
    lwz     r9,72(r31)
    lwz     r3,84(r9)
    bl      ext_02185bf0
    cmpwi   r3,0
    beq-    L0202f79c
    lwz     r12,72(r31)
    lwz     r3,84(r12)
    bl      ext_02186220
    cmpwi   r3,0
    beq-    L0202f77c
    lwz     r3,72(r31)
    bl      ext_020315bc
    cmpwi   r3,0
    beq-    L0202f77c
    lwz     r3,72(r31)
    li      r4,0
    bl      ext_020315b0
L0202f77c:
    lwz     r12,72(r31)
    lwz     r3,84(r12)
    bl      ext_02186220
    cmpwi   r3,0
    bne-    L0202f79c
    li      r10,1
    stb     r10,39(r31)
    stb     r10,64(r31)
L0202f79c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
