# Converted from the disassembly of 0x024bd464 (236 bytes). Name is a placeholder.
    .text
    .globl Batch_024bd464
Batch_024bd464:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    cmpwi   r4,0
    stw     r0,20(r1)
    lwz     r0,56(r31)
    beq-    L024bd4d8
    srwi.   r0,r0,31
    beq-    L024bd498
    lbz     r9,24(r31)
    cmpwi   r9,0
    bne-    L024bd53c
L024bd498:
    lwz     r10,28(r31)
    cmplwi  r10,2
    lwz     r12,32(r31)
    ble-    L024bd4ac
    addi    r12,r12,8
L024bd4ac:
    li      r4,0
    lwz     r3,0(r12)
    li      r6,1
    mr      r5,r4
    bl      ext_0247faa4
    lwz     r11,56(r31)
    oris    r11,r11,32768
    mr      r3,r31
    stw     r11,56(r31)
    bl      ext_02484b58
    b       L024bd53c
L024bd4d8:
    srwi.   r12,r0,31
    beq-    L024bd53c
    lbz     r5,24(r31)
    cmpwi   r5,0
    beq-    L024bd53c
    lwz     r0,28(r31)
    cmplwi  r0,2
    lwz     r11,32(r31)
    ble-    L024bd500
    addi    r11,r11,8
L024bd500:
    li      r4,1
    lwz     r3,0(r11)
    li      r5,0
    mr      r6,r4
    bl      ext_0247faa4
    lwz     r7,84(r31)
    lwz     r8,220(r7)
    mtctr   r8
    mr      r3,r31
    bctrl
    lwz     r9,56(r31)
    clrlwi  r11,r9,1
    mr      r3,r31
    stw     r11,56(r31)
    bl      ext_02484b58
L024bd53c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
