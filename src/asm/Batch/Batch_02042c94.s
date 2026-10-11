# Converted from the disassembly of 0x02042c94 (260 bytes). Name is a placeholder.
    .text
    .globl Batch_02042c94
Batch_02042c94:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stw     r31,12(r1)
    stfs    f31,24(r1)
    mr      r31,r3
    stw     r0,36(r1)
    lwz     r11,348(r31)
    cmpwi   r11,0
    ble-    L02042d78
    addic.  r11,r11,-1
    stw     r11,348(r31)
    bne-    L02042d78
    lwz     r0,340(r31)
    lwz     r12,344(r31)
    cmpw    r0,r12
    bgt-    L02042d74
    bge-    L02042d78
    cmplwi  r0,1
    blt-    L02042cfc
    beq-    L02042d2c
    cmplwi  r0,2
    beq-    L02042d3c
    stw     r0,344(r31)
    b       L02042d78
L02042cfc:
    lis     r8,4096
    mr      r3,r31
    lfs     f31,21708(r8)
    bl      ext_02042680
    fmr     f1,f31
    li      r4,30
    bl      ext_02038ea0
    mr      r3,r31
    bl      ext_02042680
    fmr     f1,f31
    li      r4,30
    bl      ext_02038f48
L02042d2c:
    mr      r3,r31
    bl      ext_02042680
    li      r4,30
    bl      ext_02038e14
L02042d3c:
    mr      r3,r31
    bl      ext_02042680
    li      r4,30
    bl      ext_02038e88
    lis     r3,4117
    lwz     r3,-28988(r3)
    cmpwi   r3,0
    beq-    L02042d70
    lwz     r9,0(r3)
    lwz     r10,132(r9)
    mtctr   r10
    li      r4,30
    bctrl
L02042d70:
    lwz     r0,340(r31)
L02042d74:
    stw     r0,344(r31)
L02042d78:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
