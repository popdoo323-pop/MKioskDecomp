# Converted from the disassembly of 0x020427e4 (256 bytes). Name is a placeholder.
    .text
    .globl Batch_020427e4
Batch_020427e4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L02042808
    lwz     r3,420(r3)
L02042808:
    lwz     r0,188(r3)
    cmplwi  r0,1
    blt-    L02042834
    beq-    L02042854
    cmplwi  r0,2
    beq-    L02042878
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L02042834:
    mr      r3,r31
    bl      ext_020427dc
    bl      ext_020341f4
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L02042854:
    mr      r3,r31
    bl      ext_020427dc
    li      r4,2
    bl      ext_02034370
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L02042878:
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L020428c0
    lwz     r12,424(r3)
    cmpwi   r12,0
    beq-    L020428c0
    lwz     r11,204(r12)
    cmpwi   r11,3
    bne-    L020428c0
    mr      r3,r31
    bl      ext_020427dc
    li      r4,3
    bl      ext_02034370
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L020428c0:
    mr      r3,r31
    bl      ext_020427dc
    li      r4,4
    bl      ext_02034370
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
