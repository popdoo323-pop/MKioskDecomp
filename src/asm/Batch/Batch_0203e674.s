# Converted from the disassembly of 0x0203e674 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_0203e674
Batch_0203e674:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r10,44(r30)
    lwz     r12,0(r10)
    cmpwi   r12,0
    mr      r31,r4
    beq-    L0203e6ac
    lwz     r3,0(r10)
    mr      r4,r31
    bl      ext_025878ac
L0203e6ac:
    lwz     r11,148(r30)
    lwz     r0,0(r11)
    cmpwi   r0,0
    beq-    L0203e6c8
    lwz     r3,0(r11)
    mr      r4,r31
    bl      ext_025878ac
L0203e6c8:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
