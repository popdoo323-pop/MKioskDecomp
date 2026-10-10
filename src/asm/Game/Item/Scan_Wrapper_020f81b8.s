# Wrapper at 0x020f81b8 (36 bytes). Calls 0x020f7f1c, pops its frame, adds 840 to r3 and returns. Caller not yet
# identified, so the name is a placeholder. Written from the disassembly of the original bytes.
    .text
    .globl Scan_Wrapper_020f81b8
Scan_Wrapper_020f81b8:
    mflr    r0
    stw     r0, 4(r1)
    stwu    r1, -8(r1)
    bl      ext_020f7f1c
    lwz     r0, 12(r1)
    mtlr    r0
    addi    r1, r1, 8
    addi    r3, r3, 840
    blr
