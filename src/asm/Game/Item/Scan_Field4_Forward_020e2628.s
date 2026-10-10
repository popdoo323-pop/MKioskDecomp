# Calls 0x020df528, loads the pointer at +4 of r3, calls 0x021762b8 with r5 as the second argument. Placeholder name;
# caller not yet identified. Written from the disassembly of the original bytes.
    .text
    .globl Scan_Field4_Forward_020e2628
Scan_Field4_Forward_020e2628:
    mflr    r0
    stwu    r1, -16(r1)
    stw     r31, 12(r1)
    or      r31, r5, r5
    stw     r0, 20(r1)
    bl      ext_020df528
    lwz     r3, 4(r3)
    or      r4, r31, r31
    bl      ext_021762b8
    lwz     r0, 20(r1)
    mtlr    r0
    lwz     r31, 12(r1)
    addi    r1, r1, 16
    blr
