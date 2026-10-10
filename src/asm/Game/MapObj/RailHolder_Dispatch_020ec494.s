# Rail holder dispatch at 0x020ec494 (52 bytes). If the index (r4) is below the count at +0xc, the element at index
# (entry size 16) is taken from the array at +0x10, otherwise element 0 is used. The element's object gets a virtual
# call through its vtable at +0xc, passing the value in r5 as the second argument. Written from the disassembly of the
# original bytes. Name is a placeholder.
    .text
    .globl RailHolder_Dispatch_020ec494
RailHolder_Dispatch_020ec494:
    or      r12, r3, r3
    lwz     r11, 0xc(r12)
    cmplw   r4, r11
    li      r3, 0x0
    bge     1f
    lwz     r9, 0x10(r12)
    rlwinm  r0, r4, 0x4, 0x0, 0x1b
    add     r3, r9, r0
1:
    lwz     r10, 0xc(r3)
    lwz     r0, 0xc(r10)
    mtctr   r0
    or      r4, r5, r5
    bctr
