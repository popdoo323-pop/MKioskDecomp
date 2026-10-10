# Calls 0x020fd964, then returns element (index r3) of the array at +16 of the returned object, with 88-byte elements.
# Placeholder name; caller not yet identified. Written from the disassembly of the original bytes.
    .text
    .globl Scan_ArrayElem88_020fecc4
Scan_ArrayElem88_020fecc4:
    mflr    r0
    stw     r0, 4(r1)
    or      r0, r3, r3
    stwu    r1, -8(r1)
    bl      ext_020fd964
    mulli   r0, r0, 88
    lwz     r12, 16(r3)
    add     r3, r12, r0
    lwz     r0, 12(r1)
    mtlr    r0
    addi    r1, r1, 8
    blr
