# Converted from the disassembly of 0x02044e24 (156 bytes). Name is a placeholder.
    .text
    .globl Batch_02044e24
Batch_02044e24:
    lis     r12,4117
    lwz     r12,-5364(r12)
    lwz     r10,64(r12)
    lwz     r12,20(r10)
    cmpwi   r12,0
    beq-    L02044e54
    lwz     r11,76(r10)
    cmpwi   r11,0
    beq-    L02044e54
    lhz     r0,126(r10)
    cmpwi   r0,0
    bne-    L02044e58
L02044e54:
    addi    r11,r10,548
L02044e58:
    lfs     f0,0(r11)
    stfs    f0,4(r4)
    lfs     f0,4(r11)
    stfs    f0,8(r4)
    lfs     f0,8(r11)
    stfs    f0,12(r4)
    lfs     f0,12(r11)
    stfs    f0,16(r4)
    lfs     f0,16(r11)
    stfs    f0,20(r4)
    lwz     r0,20(r11)
    stw     r0,24(r4)
    lwz     r9,24(r11)
    stw     r9,28(r4)
    lfs     f0,28(r11)
    stfs    f0,32(r4)
    lfs     f0,32(r11)
    li      r8,6
    cmpwi   r5,0
    stfs    f0,36(r4)
    beq-    L02044eb0
    li      r8,2
L02044eb0:
    stw     r8,40(r4)
    li      r9,1
    stb     r9,48(r4)
    blr
