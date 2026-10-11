# Converted from the disassembly of 0x02033ad8 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_02033ad8
Batch_02033ad8:
    cmpwi   r4,0
    beqlr-
    lwz     r0,0(r4)
    stw     r0,0(r3)
    lwz     r11,4(r4)
    stw     r11,4(r3)
    lwz     r12,8(r4)
    stw     r12,8(r3)
    lfs     f0,12(r4)
    stfs    f0,12(r3)
    lfs     f0,16(r4)
    stfs    f0,16(r3)
    lfs     f0,20(r4)
    stfs    f0,20(r3)
    lfs     f0,24(r4)
    stfs    f0,24(r3)
    blr
