# Two-call wrapper at 0x020f9b3c (36 bytes). Calls 0x020f7f1c then 0x020ee7c8 and returns. Placeholder name; caller not
# yet identified. Written from the disassembly of the original bytes.
    .text
    .globl Scan_Wrapper_020f9b3c
Scan_Wrapper_020f9b3c:
    mflr    r0
    stw     r0, 4(r1)
    stwu    r1, -8(r1)
    bl      ext_020f7f1c
    bl      ext_020ee7c8
    lwz     r0, 12(r1)
    mtlr    r0
    addi    r1, r1, 8
    blr
