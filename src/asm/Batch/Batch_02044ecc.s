# Converted from the disassembly of 0x02044ecc (116 bytes). Name is a placeholder.
    .text
    .globl Batch_02044ecc
Batch_02044ecc:
    lis     r11,4117
    lwz     r11,-5364(r11)
    lwz     r11,64(r11)
    lwz     r8,20(r11)
    cmpwi   r8,0
    beq-    L02044efc
    lwz     r12,80(r11)
    cmpwi   r12,0
    beq-    L02044efc
    lhz     r0,128(r11)
    cmpwi   r0,0
    bne-    L02044f00
L02044efc:
    addi    r12,r11,584
L02044f00:
    lfs     f0,0(r12)
    stfs    f0,4(r4)
    lfs     f0,4(r12)
    stfs    f0,8(r4)
    lfs     f0,8(r12)
    stfs    f0,12(r4)
    lfs     f0,12(r12)
    li      r9,6
    cmpwi   r5,0
    stfs    f0,16(r4)
    beq-    L02044f30
    li      r9,2
L02044f30:
    stw     r9,20(r4)
    li      r0,1
    stb     r0,28(r4)
    blr
