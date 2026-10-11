# Converted from the disassembly of 0x02046ccc (104 bytes). Name is a placeholder.
    .text
    .globl Batch_02046ccc
Batch_02046ccc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r6
    li      r6,0
    addi    r3,r3,36
    stw     r0,20(r1)
    bl      ext_020547c8
    cmpwi   r31,0
    beq-    L02046d18
    cmpwi   r3,21
    ble-    L02046d14
    li      r0,21
    stw     r0,0(r31)
    cntlzw  r0,r3
    lwz     r11,0(r31)
    srwi    r3,r0,5
    b       L02046d20
L02046d14:
    stw     r3,0(r31)
L02046d18:
    cntlzw  r0,r3
    srwi    r3,r0,5
L02046d20:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
