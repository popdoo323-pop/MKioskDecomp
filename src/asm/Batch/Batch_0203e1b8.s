# Converted from the disassembly of 0x0203e1b8 (296 bytes). Name is a placeholder.
    .text
    .globl Batch_0203e1b8
Batch_0203e1b8:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r30,24(r1)
    stw     r31,28(r1)
    lis     r11,4117
    stw     r0,36(r1)
    lwz     r11,1072(r11)
    cmpwi   r11,5
    mr      r31,r3
    beq-    L0203e2c8
    lwz     r3,224(r31)
    li      r4,6
    li      r5,0
    bl      ext_02040fac
    cmpwi   r3,0
    beq-    L0203e2c8
    lwz     r5,140(r31)
    cmplwi  r5,4
    addi    r12,r31,92
    bge-    L0203e210
    mulli   r11,r5,12
    add     r12,r12,r11
L0203e210:
    lwz     r0,0(r12)
    li      r6,-1
    cmplw   r0,r6
    li      r30,0
    beq-    L0203e24c
    cmplwi  r0,11
    beq-    L0203e2a8
    cmplwi  r0,9
    beq-    L0203e258
    addi    r4,r1,16
    mr      r3,r31
    stw     r30,16(r1)
    bl      ext_0203d500
    li      r8,0
    b       L0203e2c4
L0203e24c:
    li      r8,0
    stb     r8,240(r31)
    b       L0203e2c8
L0203e258:
    lwz     r7,248(r31)
    cmpwi   r7,1
    bne-    L0203e2c8
    lis     r3,4096
    addi    r3,r3,19640
    bl      ext_02045d30
    li      r0,9
    lwz     r5,140(r31)
    addi    r4,r1,8
    mr      r3,r31
    stw     r0,8(r1)
    bl      ext_0203d500
    mr      r3,r31
    lwz     r5,140(r31)
    addi    r4,r1,8
    stw     r30,8(r1)
    bl      ext_0203d418
    li      r8,1
    stb     r8,240(r31)
    b       L0203e2c8
L0203e2a8:
    li      r0,11
    mr      r3,r31
    addi    r4,r1,12
    li      r5,0
    stw     r0,12(r1)
    bl      ext_0203e128
    li      r8,1
L0203e2c4:
    stb     r8,240(r31)
L0203e2c8:
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
