# Wrapper at 0x020e24f8 (40 bytes). Calls 0x020df528, loads the field at +12 of r3, calls 0x0021711f8 and returns.
# Placeholder name; caller not yet identified. Written from the disassembly of the original bytes.
    .text
    .globl Scan_Wrapper_020e24f8
Scan_Wrapper_020e24f8:
    mflr    r0
    stw     r0, 4(r1)
    stwu    r1, -8(r1)
    bl      ext_020df528
    lwz     r3, 12(r3)
    bl      ext_021711f8
    lwz     r0, 12(r1)
    mtlr    r0
    addi    r1, r1, 8
    blr
