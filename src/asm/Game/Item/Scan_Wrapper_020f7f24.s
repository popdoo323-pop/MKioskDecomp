# Two-call wrapper at 0x020f7f24 (36 bytes). Calls 0x020f7f1c, then 0x020ee768, and returns. Written from the disassembly
# of the original bytes. Name is a placeholder: the caller is not yet identified.
    .text
    .globl Scan_Wrapper_020f7f24
Scan_Wrapper_020f7f24:
    mflr    r0
    stw     r0, 4(r1)
    stwu    r1, -8(r1)
    bl      ext_020f7f1c
    bl      ext_020ee768
    lwz     r0, 12(r1)
    mtlr    r0
    addi    r1, r1, 8
    blr
