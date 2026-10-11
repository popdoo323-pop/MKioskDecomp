# Converted from the disassembly of 0x02033214 (48 bytes). Name is a placeholder.
    .text
    .globl Batch_02033214
Batch_02033214:
    lis     r12,4096
    lfs     f0,16660(r12)
    mulli   r12,r4,24
    li      r0,-1
    add     r11,r3,r12
    stwu    r0,212(r11)
    stfs    f0,12(r11)
    stfs    f0,20(r11)
    stfs    f0,16(r11)
    stfs    f0,8(r11)
    stfs    f0,4(r11)
    blr
