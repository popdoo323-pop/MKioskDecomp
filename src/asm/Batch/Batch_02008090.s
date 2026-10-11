# Converted from the disassembly of 0x02008090 (320 bytes). Name is a placeholder.
    .text
    .globl Batch_02008090
Batch_02008090:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r29,12(r1)
    mr      r31,r3
    stw     r30,16(r1)
    stw     r0,28(r1)
    bl      ext_02007818
    lwz     r3,544(r31)
    lwz     r10,0(r3)
    lwz     r0,132(r10)
    mtctr   r0
    bctrl
    lwz     r7,548(r31)
    lis     r29,4117
    stw     r3,556(r31)
    lwzu    r8,-31080(r29)
    cmplw   r7,r8
    lis     r30,4117
    bne-    L020080e8
    li      r9,0
    stb     r9,-31076(r30)
L020080e8:
    bl      ext_0201528c
    cmpwi   r3,10
    bne-    L020080fc
    lwz     r3,60(r31)
    bl      ext_02031c0c
L020080fc:
    lwz     r12,64(r31)
    lwz     r7,72(r12)
    lbz     r0,17(r7)
    cmpwi   r0,0
    beq-    L02008144
    lis     r9,-30583
    lwz     r11,548(r31)
    addi    r9,r9,-30583
    mulhw   r0,r9,r11
    add     r0,r11,r0
    srawi   r8,r11,31
    srawi   r0,r0,5
    subf    r0,r8,r0
    mulli   r0,r0,60
    subf.   r10,r0,r11
    bne-    L02008144
    lwz     r10,0(r29)
    stw     r10,548(r31)
L02008144:
    mr      r3,r31
    bl      ext_02007fbc
    cmpwi   r3,0
    beq-    L020081a0
    lwz     r12,548(r31)
    lwz     r0,552(r31)
    cmpw    r12,r0
    blt-    L02008198
    lwz     r3,60(r31)
    bl      ext_02031ca0
    lis     r11,4120
    lwz     r11,-15280(r11)
    lwz     r3,56(r31)
    mulli   r4,r11,60
    bl      ext_02008eb0
    lis     r12,4120
    lwz     r12,-15284(r12)
    mulli   r0,r12,60
    add     r8,r3,r0
    li      r12,0
    stw     r8,552(r31)
L02008198:
    addi    r9,r12,1
    stw     r9,548(r31)
L020081a0:
    lbz     r11,-31076(r30)
    cmpwi   r11,0
    beq-    L020081b4
    lwz     r12,0(r29)
    stw     r12,548(r31)
L020081b4:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
