# Converted from the disassembly of 0x02045eb0 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_02045eb0
Batch_02045eb0:
    mflr    r0
    stw     r0,4(r1)
    mr.     r11,r3
    stwu    r1,-8(r1)
    beq-    L02045edc
    bl      ext_02045e74
    lwz     r0,0(r11)
    cmpwi   r0,0
    beq-    L02045edc
    lwz     r3,0(r11)
    bl      ext_02587ea8
L02045edc:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
