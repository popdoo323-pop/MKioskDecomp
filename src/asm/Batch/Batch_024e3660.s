# Converted from the disassembly of 0x024e3660 (152 bytes). Name is a placeholder.
    .text
    .globl Batch_024e3660
Batch_024e3660:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024e3688
    li      r3,216
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024e36e0
L024e3688:
    mr      r3,r31
    bl      ext_0248c63c
    li      r11,0
    lis     r0,4107
    stb     r11,205(r31)
    addic   r0,r0,-9852
    stb     r11,208(r31)
    stw     r0,196(r31)
    li      r0,-1
    stb     r11,209(r31)
    stw     r0,212(r31)
    stb     r11,204(r31)
    stb     r11,207(r31)
    stb     r11,206(r31)
    stb     r11,211(r31)
    li      r3,104
    stb     r11,210(r31)
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024e36dc
    bl      ext_024893b0
L024e36dc:
    stw     r3,200(r31)
L024e36e0:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
