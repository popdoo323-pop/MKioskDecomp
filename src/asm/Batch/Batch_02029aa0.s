# Converted from the disassembly of 0x02029aa0 (172 bytes). Name is a placeholder.
    .text
    .globl Batch_02029aa0
Batch_02029aa0:
    stwu    r1,-64(r1)
    li      r0,3
    addi    r11,r1,4
    mtctr   r0
    li      r10,0
L02029ab4:
    stw     r10,4(r11)
    stw     r10,8(r11)
    stw     r10,12(r11)
    stwu    r10,16(r11)
    bdnz+   L02029ab4
    lwz     r0,280(r3)
    cmpwi   r0,0
    bgt-    L02029aec
    li      r8,0
    li      r0,12
    mr      r11,r8
    addi    r9,r1,4
    mtctr   r0
    b       L02029b20
L02029aec:
    mtctr   r0
    addi    r8,r3,76
    addi    r9,r1,8
L02029af8:
    lwzu    r12,8(r8)
    lwz     r0,24(r12)
    slwi    r11,r0,2
    stwx    r12,r11,r9
    bdnz+   L02029af8
    li      r0,12
    li      r8,0
    addi    r9,r1,4
    mtctr   r0
    mr      r11,r8
L02029b20:
    lwzu    r12,4(r9)
    cmpwi   r12,0
    beq-    L02029b40
    add     r10,r3,r11
    stw     r8,24(r12)
    addi    r8,r8,1
    addi    r11,r11,8
    stw     r12,88(r10)
L02029b40:
    bdnz+   L02029b20
    addi    r1,r1,64
    blr
