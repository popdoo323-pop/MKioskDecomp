# Calls 0x020fd964, then calls the virtual slot at +36 of the object it returns. Placeholder name; caller not yet
# identified. Written from the disassembly of the original bytes.
    .text
    .globl Scan_VirtualCall36_020fe098
Scan_VirtualCall36_020fe098:
    mflr    r0
    stw     r0, 4(r1)
    stwu    r1, -8(r1)
    bl      ext_020fd964
    lwz     r12, 0(r3)
    lwz     r0, 36(r12)
    mtctr   r0
    bctrl
    lwz     r0, 12(r1)
    mtlr    r0
    addi    r1, r1, 8
    blr
