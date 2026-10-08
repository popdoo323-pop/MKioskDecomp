# ItemCoin message handler at 0x02132ff4 (68 bytes). Message type 0 tail-calls the virtual at +0x2c of the handler
# held at this+0x10. Type 1 tail-calls the virtual at +0x64 of the object's vtable. Other types return.
# Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl ItemCoin_Message_02132ff4
ItemCoin_Message_02132ff4:
    or      r8, r4, r4
    lwz     r10, 0x8(r8)
    cmplwi  r10, 1
    blt     1f
    beq     2f
    blr
1:
    lwz     r12, 0x10(r8)
    lwz     r0, 0x2c(r12)
    or      r4, r3, r3
    mtctr   r0
    or      r3, r8, r8
    bctr
2:
    lwz     r9, 0x0(r3)
    lwz     r0, 0x64(r9)
    mtctr   r0
    lwz     r4, 0xc(r8)
    bctr
