# Wrapper at 0x020f0808 (40 bytes). Loads the pointer at +448 of r3, calls 0x02185b9c, then returns r3 + 36. Placeholder
# name; caller not yet identified. Written from the disassembly of the original bytes.
    .text
    .globl Scan_Wrapper_020f0808
Scan_Wrapper_020f0808:
    mflr    r0
    stw     r0, 4(r1)
    stwu    r1, -8(r1)
    lwz     r3, 448(r3)
    bl      ext_02185b9c
    lwz     r0, 12(r1)
    mtlr    r0
    addi    r1, r1, 8
    addi    r3, r3, 36
    blr
