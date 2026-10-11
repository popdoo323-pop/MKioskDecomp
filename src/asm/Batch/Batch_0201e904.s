# Converted from the disassembly of 0x0201e904 (136 bytes). Name is a placeholder.
    .text
    .globl Batch_0201e904
Batch_0201e904:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r9,60(r31)
    lwz     r11,48(r9)
    lbz     r12,816(r11)
    cmpwi   r12,0
    beq-    L0201e93c
    lwz     r0,44(r11)
    cmpwi   r0,0
    bne-    L0201e954
    b       L0201e948
L0201e93c:
    lwz     r0,40(r11)
    cmpwi   r0,0
    bne-    L0201e954
L0201e948:
    li      r0,1
    stb     r0,80(r31)
    b       L0201e978
L0201e954:
    mr      r3,r31
    bl      ext_0201e838
    mr      r3,r31
    bl      ext_0201dfc0
    cmpwi   r3,0
    beq-    L0201e978
    lwz     r12,52(r31)
    li      r0,1
    stb     r0,111(r12)
L0201e978:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
