# Converted from the disassembly of 0x02029b4c (156 bytes). Name is a placeholder.
    .text
    .globl Batch_02029b4c
Batch_02029b4c:
    stwu    r1,-64(r1)
    li      r0,3
    addi    r12,r1,4
    mtctr   r0
    li      r11,0
L02029b60:
    stw     r11,4(r12)
    stw     r11,8(r12)
    stw     r11,12(r12)
    stwu    r11,16(r12)
    bdnz+   L02029b60
    lwz     r9,284(r3)
    cmpwi   r9,0
    bgt-    L02029b94
    li      r0,12
    li      r7,0
    addi    r5,r1,4
    mtctr   r0
    b       L02029bc4
L02029b94:
    mtctr   r9
    addi    r8,r3,172
    addi    r10,r1,8
L02029ba0:
    lwzu    r11,8(r8)
    lwz     r9,24(r11)
    slwi    r12,r9,2
    stwx    r11,r12,r10
    bdnz+   L02029ba0
    li      r0,12
    li      r7,0
    mtctr   r0
    addi    r5,r1,4
L02029bc4:
    lwzu    r11,4(r5)
    cmpwi   r11,0
    beq-    L02029bdc
    add     r6,r3,r7
    addi    r7,r7,8
    stw     r11,184(r6)
L02029bdc:
    bdnz+   L02029bc4
    addi    r1,r1,64
    blr
