# Reads the byte at +815 of r3 as an index, passes it with a global object to 0x0218114c, returns that result + 36.
# Placeholder name; caller not yet identified. Written from the disassembly of the original bytes.
    .text
    .globl Scan_Field815_020ee798
Scan_Field815_020ee798:
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
    addi    r3, r3, 36
    blr
