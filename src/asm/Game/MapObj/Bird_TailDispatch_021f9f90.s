# Bird method at 0x021f9f90 (32 bytes). Returns when the low two bits of the halfword at +116 are clear. Otherwise
# tail-calls the virtual slot +44 of the object at +216 (through the table at +120). Written from the disassembly of the
# original bytes. Name is a placeholder.
    .text
    .globl Bird_TailDispatch_021f9f90
Bird_TailDispatch_021f9f90:
    lhz     r12, 116(r3)
    clrlwi. r0, r12, 30
    beqlr
    lwz     r3, 216(r3)
    lwz     r11, 120(r3)
    lwz     r0, 44(r11)
    mtctr   r0
    bctr
