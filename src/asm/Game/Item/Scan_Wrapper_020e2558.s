# Wrapper at 0x020e2558 (40 bytes). Calls 0x020df528, loads the field at +8 of r3, calls 0x02192df4 and returns.
# Placeholder name; caller not yet identified. Written from the disassembly of the original bytes.
    .text
    .globl Scan_Wrapper_020e2558
Scan_Wrapper_020e2558:
    mflr    r0
    stw     r0, 4(r1)
    stwu    r1, -8(r1)
    bl      ext_020df528
    lwz     r3, 8(r3)
    bl      ext_02192df4
    lwz     r0, 12(r1)
    mtlr    r0
    addi    r1, r1, 8
    blr
