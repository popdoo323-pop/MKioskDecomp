# Rail holder wrapping getter at 0x02101f84 (52 bytes). Returns the element at index (index mod count) when that
# value is below the limit at +0x10, else 0. count is a halfword at +0x4, the limit a word at +0x10, the array pointer
# a word at +0x18. Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl RailHolder_GetPoint_02101f84
RailHolder_GetPoint_02101f84:
    or      r12, r3, r3
    lhz     r9, 0x4(r12)
    divw    r10, r4, r9
    mullw   r10, r10, r9
    lwz     r0, 0x10(r12)
    subf    r11, r10, r4
    li      r3, 0x0
    cmplw   r11, r0
    bgelr
    lwz     r0, 0x18(r12)
    rlwinm  r12, r11, 0x2, 0x0, 0x1d
    lwzx    r3, r12, r0
    blr
