# Converted from the disassembly of 0x02041bcc (732 bytes). Name is a placeholder.
    .text
    .globl Batch_02041bcc
Batch_02041bcc:
    stwu    r1,-32(r1)
    mflr    r0
    stmw    r26,8(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,36(r1)
    bne-    L02041bf8
    li      r3,316
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02041e90
L02041bf8:
    mr.     r28,r31
    li      r29,0
    bne-    L02041c14
    li      r3,288
    bl      ext_0260128c
    mr.     r28,r3
    beq-    L02041dd0
L02041c14:
    mr.     r26,r28
    bne-    L02041c2c
    li      r3,280
    bl      ext_0260128c
    mr.     r26,r3
    beq-    L02041d44
L02041c2c:
    lis     r5,4096
    mr      r4,r30
    mr      r3,r26
    addi    r5,r5,21616
    bl      ext_0260d86c
    lis     r8,4106
    stb     r29,205(r26)
    lis     r0,4106
    addi    r8,r8,-19532
    lis     r10,4106
    addic   r0,r0,-19844
    stw     r8,32(r26)
    addi    r10,r10,-19516
    stw     r0,112(r26)
    li      r0,1
    stw     r10,200(r26)
    addic.  r27,r26,212
    stb     r0,204(r26)
    bne-    L02041c88
    li      r3,52
    bl      ext_0260128c
    mr.     r27,r3
    beq-    L02041ce8
L02041c88:
    mr.     r30,r27
    bne-    L02041ca0
    li      r3,52
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L02041cdc
L02041ca0:
    mr      r3,r30
    bl      ext_02410f5c
    lis     r0,4096
    addic   r0,r0,20904
    addic.  r3,r30,36
    stw     r0,0(r30)
    bne-    L02041ccc
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02041cd8
L02041ccc:
    stw     r3,4(r3)
    stw     r29,8(r3)
    stw     r3,0(r3)
L02041cd8:
    stb     r29,48(r30)
L02041cdc:
    lis     r0,4096
    addic   r0,r0,21104
    stw     r0,0(r27)
L02041ce8:
    addic.  r30,r26,264
    bne-    L02041d00
    li      r3,16
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L02041d40
L02041d00:
    mr.     r3,r30
    bne-    L02041d18
    li      r3,16
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02041d34
L02041d18:
    lis     r0,4096
    stw     r29,12(r3)
    addic   r0,r0,20684
    sth     r29,8(r3)
    stw     r0,0(r3)
    sth     r29,10(r3)
    stw     r29,4(r3)
L02041d34:
    lis     r9,4096
    addi    r9,r9,20708
    stw     r9,0(r30)
L02041d40:
    stw     r26,220(r26)
L02041d44:
    lis     r0,4106
    lis     r11,4106
    addic   r0,r0,8660
    addi    r11,r11,8972
    stw     r0,112(r28)
    lis     r0,4106
    stw     r11,32(r28)
    addic   r0,r0,8988
    lis     r12,4119
    stw     r0,200(r28)
    lwzu    r0,3832(r12)
    lis     r4,4119
    cmpwi   r0,0
    addi    r4,r4,5784
    lwz     r30,44(r28)
    bne-    L02041d98
    lis     r8,4096
    li      r7,1
    addi    r8,r8,20620
    stw     r7,0(r12)
    stw     r8,0(r4)
L02041d98:
    cmpwi   r30,0
    beq-    L02041dbc
    lwz     r9,0(r30)
    lwz     r10,12(r9)
    mtctr   r10
    mr      r3,r30
    bctrl
    cmpwi   r3,0
    bne-    L02041dc0
L02041dbc:
    li      r30,0
L02041dc0:
    lwz     r11,4(r30)
    stw     r11,280(r28)
    lwz     r12,8(r30)
    stw     r12,284(r28)
L02041dd0:
    lis     r0,4096
    lis     r7,4096
    stw     r29,312(r31)
    addic   r0,r0,21740
    addi    r7,r7,22052
    lis     r8,4096
    stw     r0,112(r31)
    addi    r8,r8,22068
    stw     r7,32(r31)
    li      r3,1
    stw     r8,200(r31)
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02041e20
    lis     r11,4117
    lis     r9,4117
    stw     r29,-28980(r11)
    lis     r7,4117
    stw     r29,-28988(r9)
    stw     r29,-28984(r7)
L02041e20:
    addi    r11,r31,292
    stw     r3,288(r31)
    li      r7,0
    mr      r10,r11
    b       L02041e3c
L02041e34:
    cmplwi  r7,5
    bge-    L02041e48
L02041e3c:
    mr      r8,r10
    li      r0,0
    b       L02041e4c
L02041e48:
    mr      r8,r11
L02041e4c:
    addi    r7,r7,1
    stw     r0,0(r8)
    cmpwi   r7,5
    addi    r10,r10,4
    blt+    L02041e34
    lis     r10,516
    lis     r12,516
    addi    r10,r10,6788
    addi    r12,r12,6952
    stw     r10,8(r11)
    lis     r9,516
    stw     r12,12(r11)
    addi    r9,r9,6624
    lis     r12,4117
    li      r0,1
    stw     r9,4(r11)
    stb     r0,-28976(r12)
L02041e90:
    mr      r3,r31
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
