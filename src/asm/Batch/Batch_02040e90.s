# Converted from the disassembly of 0x02040e90 (192 bytes). Name is a placeholder.
    .text
    .globl Batch_02040e90
Batch_02040e90:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,4(r31)
    cmpwi   r0,0
    beq-    L02040f3c
    lis     r12,4117
    lwz     r12,-28988(r12)
    cmpwi   r12,0
    bne-    L02040edc
    mr      r3,r31
    bl      ext_02040984
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L02040edc:
    lwz     r11,108(r12)
    cmpwi   r11,7
    beq-    L02040f2c
    cmpwi   r11,6
    beq-    L02040f2c
    lwz     r0,152(r12)
    cmpwi   r0,0
    beq-    L02040f34
    lwz     r0,152(r12)
    cmplwi  r0,0
    beq-    L02040f34
    cmplwi  r0,3
    blt-    L02040f2c
    cmplwi  r0,7
    bgt-    L02040f2c
    mr      r3,r31
    bl      ext_02040a14
    mr      r3,r31
    bl      ext_02040dcc
    b       L02040f3c
L02040f2c:
    mr      r3,r31
    bl      ext_02040984
L02040f34:
    mr      r3,r31
    bl      ext_02040dcc
L02040f3c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
