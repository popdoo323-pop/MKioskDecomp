# Wrapper at 0x020fd9d8 (36 bytes). Calls 0x020fd964, pops its frame, loads a halfword from +0x22 of r3 into r3 and
# returns. Placeholder name; caller not yet identified. Written from the disassembly of the original bytes.
    .text
    .globl Scan_Wrapper_020fd9d8
Scan_Wrapper_020fd9d8:
    mflr    r0
    stw     r0, 4(r1)
    stwu    r1, -8(r1)
    bl      ext_020fd964
    lwz     r0, 12(r1)
    lhz     r3, 34(r3)
    mtlr    r0
    addi    r1, r1, 8
    blr
