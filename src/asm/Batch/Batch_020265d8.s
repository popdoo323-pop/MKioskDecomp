# Converted from the disassembly of 0x020265d8 (196 bytes). Name is a placeholder.
    .text
    .globl Batch_020265d8
Batch_020265d8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r11,48(r3)
    lha     r6,824(r11)
    lbz     r0,816(r11)
    xori    r7,r6,1
    addi    r12,r3,48
    cntlzw  r9,r7
    cmpwi   r0,0
    srwi    r31,r9,5
    beq-    L0202661c
    lwz     r11,44(r11)
    cmpwi   r11,0
    ble-    L02026684
    b       L02026628
L0202661c:
    lwz     r11,40(r11)
    cmpwi   r11,0
    ble-    L02026684
L02026628:
    lwz     r8,0(r12)
    lbz     r0,816(r8)
    lwz     r12,44(r3)
    cmpwi   r0,0
    lwz     r3,0(r12)
    beq-    L02026664
    lhz     r5,90(r8)
    lhz     r4,88(r8)
    bl      ext_020062f0
    lha     r9,824(r3)
    xori    r10,r9,1
    cntlzw  r0,r10
    srwi    r8,r0,5
    or      r31,r31,r8
    b       L02026684
L02026664:
    lhz     r5,50(r8)
    lhz     r4,48(r8)
    bl      ext_020062f0
    lha     r9,824(r3)
    xori    r10,r9,1
    cntlzw  r0,r10
    srwi    r8,r0,5
    or      r31,r31,r8
L02026684:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
