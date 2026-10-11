# Converted from the disassembly of 0x0203a19c (152 bytes). Name is a placeholder.
    .text
    .globl Batch_0203a19c
Batch_0203a19c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    beq-    L0203a21c
    lis     r12,4096
    cmpwi   r30,0
    addi    r12,r12,18160
    bne-    L0203a1dc
    clrlwi. r0,r31,31
    stw     r12,4(r30)
    beq-    L0203a21c
    b       L0203a214
L0203a1dc:
    lis     r11,4110
    addi    r3,r30,252
    addi    r11,r11,30708
    li      r4,2
    stw     r11,4(r30)
    bl      ext_02636acc
    addi    r3,r30,164
    li      r4,2
    bl      ext_0262b73c
    addi    r3,r30,68
    li      r4,2
    bl      ext_0262b73c
    clrlwi. r0,r31,31
    beq-    L0203a21c
L0203a214:
    mr      r3,r30
    bl      ext_026014bc
L0203a21c:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
