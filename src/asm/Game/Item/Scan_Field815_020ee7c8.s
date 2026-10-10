# Same as 0x020ee798 but returns the result + 24. Placeholder name; caller not yet identified.
# Written from the disassembly of the original bytes.
    .text
    .globl Scan_Field815_020ee7c8
Scan_Field815_020ee7c8:
    mflr    r0
    stw     r0, 4(r1)
    stwu    r1, -8(r1)
    lbz     r4, 815(r3)
    lis     r3, 0x1015
    lwz     r3, -3284(r3)
    bl      ext_0218114c
    lwz     r0, 12(r1)
    mtlr    r0
    addi    r1, r1, 8
    addi    r3, r3, 24
    blr
