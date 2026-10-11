# Converted from the disassembly of 0x02040984 (144 bytes). Name is a placeholder.
    .text
    .globl Batch_02040984
Batch_02040984:
    lwz     r0,4(r3)
    cmpwi   r0,0
    beqlr-
    lwz     r10,84(r3)
    addi    r10,r10,1
    li      r11,0
    stw     r10,84(r3)
    cmpwi   r10,1
    stb     r11,56(r3)
    bne-    L020409d0
    lha     r12,64(r3)
    addi    r12,r12,1
    li      r11,1
    sth     r12,64(r3)
    lha     r0,64(r3)
    stb     r11,56(r3)
    cmpwi   r0,16
    bltlr-
    b       L020409f8
L020409d0:
    lwz     r0,20(r3)
    cmplw   r10,r0
    bltlr-
    lbz     r0,56(r3)
    stw     r11,84(r3)
    cmpwi   r0,0
    beqlr-
    lha     r0,64(r3)
    cmpwi   r0,16
    bltlr-
L020409f8:
    srawi   r11,r0,31
    clrlwi  r12,r11,28
    add     r11,r12,r0
    clrrwi  r12,r11,4
    subf    r12,r12,r0
    sth     r12,64(r3)
    blr
