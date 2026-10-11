# Converted from the disassembly of 0x020341f4 (148 bytes). Name is a placeholder.
    .text
    .globl Batch_020341f4
Batch_020341f4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02034078
    mr      r3,r31
    bl      ext_02033b7c
    addi    r3,r31,100
    li      r4,0
    li      r5,1
    bl      ext_02033594
    li      r4,0
    mr      r3,r31
    bl      ext_02034120
    lis     r3,4117
    lwz     r3,-28988(r3)
    cmpwi   r3,0
    beq-    L02034274
    lis     r12,4117
    lwz     r12,1072(r12)
    cmpwi   r12,5
    li      r0,1
    beq-    L0203426c
    lwz     r11,152(r3)
    cmpwi   r11,1
    beq-    L0203426c
    cmpwi   r11,2
    beq-    L0203426c
    li      r0,0
L0203426c:
    clrlwi  r4,r0,24
    bl      ext_0205a944
L02034274:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
