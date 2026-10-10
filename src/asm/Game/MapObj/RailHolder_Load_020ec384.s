# Rail holder loader at 0x020ec384 (272 bytes). Reads a count and a list of 16-byte entries (through the holder's
# virtual slot +0x34 on the object at 0x1015265c), then calls each entry's virtual slot +0x1c through the holder.
# External calls are supplied as symbols. Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl RailHolder_Load_020ec384
RailHolder_Load_020ec384:
    stwu    r1, -0x28(r1)
    mflr    r0
    stmw    r26, 0x10(r1)
    stw     r0, 0x2c(r1)
    or      r29, r3, r3
    li      r3, 0x0
    or      r26, r4, r4
    bl      ext_0254a38c
    stw     r3, 0x4(r29)
    or      r3, r26, r26
    bl      ext_0254afdc
    rlwinm. r31, r3, 0, 16, 31
    sth     r31, 0x8(r29)
    beq     L480
    cmpwi   r31, 0x0
    ble     L42c
    lis     r3, 0x1015
    lwz     r3, 0x265c(r3)
    bl      ext_0261c858
    lwz     r11, 0xc(r3)
    lwz     r0, 0x34(r11)
    mtctr   r0
    li      r5, 0x4
    rlwinm  r4, r31, 4, 0, 27
    bctrl
    or      r27, r3, r3
    cmpwi   r31, 0x0
    or      r30, r31, r31
    li      r12, 0x0
    bgt     L400
    li      r30, 0x1
L400:
    rlwinm  r28, r12, 4, 0, 27
L404:
    add.    r3, r27, r28
    beq     L410
    bl      ext_020fce40
L410:
    subic.  r30, r30, 0x1
    addi    r28, r28, 0x10
    bne     L404
    cmpwi   r27, 0x0
    beq     L42c
    stw     r27, 0x10(r29)
    stw     r31, 0xc(r29)
L42c:
    addi    r3, r1, 0x8
    bl      ext_0254a2ac
    lhz     r0, 0x8(r29)
    li      r31, 0x0
    cmpw    r31, r0
    bge     L480
L444:
    addi    r4, r1, 0x8
    or      r5, r31, r31
    or      r3, r26, r26
    bl      ext_0254ac4c
    lwz     r8, 0x0(r29)
    lwz     r9, 0x1c(r8)
    mtctr   r9
    addi    r5, r1, 0x8
    or      r3, r29, r29
    rlwinm  r4, r31, 0, 16, 31
    bctrl
    lhz     r10, 0x8(r29)
    addi    r31, r31, 0x1
    cmpw    r31, r10
    blt     L444
L480:
    lmw     r26, 0x10(r1)
    lwz     r0, 0x2c(r1)
    mtlr    r0
    addi    r1, r1, 0x28
    blr
