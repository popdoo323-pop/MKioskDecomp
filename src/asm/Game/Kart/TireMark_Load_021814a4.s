# Tire-mark loader at 0x021814a4 (152 bytes). Gets an object through 0x02421764 and, if it is not null, uses the sub-object
# at +296 of it. Builds a parameter block on the stack (two string-table pointers, a count of 9, the value 8192), makes a
# resource through 0x0243a290, then registers it with the object at +816 of this object through 0x026436ac with a null
# third argument. Written from the disassembly of the original bytes. The tire-mark resource is TireMark.bfres. Name is a
# placeholder.
    .text
    .globl TireMark_Load_021814a4
TireMark_Load_021814a4:
    mflr    r0
    stwu    r1, -48(r1)
    stw     r30, 40(r1)
    or      r30, r3, r3
    stw     r31, 44(r1)
    stw     r0, 52(r1)
    bl      ext_02421764
    cmpwi   r3, 0x0
    beq     L4cc
    addi    r3, r3, 296
L4cc:
    li      r31, 0x0
    li      r11, 9
    lis     r12, 0x1002
    stw     r31, 16(r1)
    addi    r12, r12, -8756
    stw     r11, 32(r1)
    lis     r0, 0x1002
    stb     r31, 28(r1)
    addic   r0, r0, -7712
    stw     r12, 12(r1)
    addi    r4, r1, 8
    stw     r31, 24(r1)
    stw     r0, 8(r1)
    li      r0, 8192
    stb     r31, 36(r1)
    addi    r5, r1, 16
    stw     r0, 20(r1)
    bl      ext_0243a290
    or      r4, r3, r3
    addi    r3, r30, 816
    or      r5, r31, r31
    bl      ext_026436ac
    lwz     r0, 52(r1)
    lwz     r31, 44(r1)
    mtlr    r0
    lwz     r30, 40(r1)
    addi    r1, r1, 48
    blr
