# Converted from the disassembly of 0x0202f7b4 (116 bytes). Name is a placeholder.
    .text
    .globl Batch_0202f7b4
Batch_0202f7b4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r10,76(r3)
    lbz     r0,80(r10)
    cmpwi   r0,0
    li      r31,0
    bne-    L0202f810
    lwz     r11,72(r3)
    lwz     r3,84(r11)
    bl      ext_021861a4
    cmpwi   r3,0
    bne-    L0202f810
    bl      ext_0201528c
    lis     r12,4120
    lwz     r12,-12516(r12)
    cmpw    r3,r12
    bgt-    L0202f80c
    bl      ext_02398c18
    cmpwi   r3,0
    beq-    L0202f810
L0202f80c:
    li      r31,1
L0202f810:
    lwz     r0,20(r1)
    clrlwi  r3,r31,24
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
