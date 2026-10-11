# Converted from the disassembly of 0x024cffbc (168 bytes). Name is a placeholder.
    .text
    .globl Batch_024cffbc
Batch_024cffbc:
    stwu    r1,-32(r1)
    mflr    r0
    stmw    r27,12(r1)
    li      r28,0
    addi    r30,r3,88
    stw     r0,36(r1)
    mr      r29,r30
    b       L024cffe4
L024cffdc:
    cmplwi  r28,3
    bge-    L024cfff0
L024cffe4:
    mr      r31,r29
    li      r27,0
    b       L024cfff4
L024cfff0:
    mr      r31,r30
L024cfff4:
    lwz     r10,0(r31)
    cmpwi   r10,0
    beq-    L024d0040
    lbz     r11,4(r31)
    cmpwi   r11,0
    beq-    L024d0040
    lwz     r12,12(r31)
    lwz     r0,20(r12)
    mtctr   r0
    addi    r3,r31,8
    bctrl
    lwz     r3,8(r31)
    li      r5,-1
    lwz     r4,0(r31)
    li      r6,0
    bl      ext_024af380
    lwz     r9,8(r31)
    stb     r27,4(r31)
    sth     r27,0(r9)
L024d0040:
    addi    r28,r28,1
    cmpwi   r28,3
    addi    r29,r29,532
    blt+    L024cffdc
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
