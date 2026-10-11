# Converted from the disassembly of 0x02010870 (304 bytes). Name is a placeholder.
    .text
    .globl Batch_02010870
Batch_02010870:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r10,4096
    lfs     f0,4316(r10)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r11,68(r31)
    lfs     f12,60(r11)
    lis     r12,4096
    fcmpu   cr0,f12,f0
    lfs     f13,4312(r12)
    bge-    L020108bc
    stfs    f0,60(r11)
    lwz     r11,68(r31)
    lfs     f12,64(r11)
    fcmpu   cr0,f12,f0
    blt-    L020108dc
    b       L020108f4
L020108bc:
    fcmpu   cr0,f12,f13
    ble-    L020108c8
    fmr     f12,f13
L020108c8:
    stfs    f12,60(r11)
    lwz     r11,68(r31)
    lfs     f12,64(r11)
    fcmpu   cr0,f12,f0
    bge-    L020108f4
L020108dc:
    stfs    f0,64(r11)
    lwz     r12,72(r31)
    lwz     r0,116(r12)
    cmpwi   r0,3
    blt-    L0201093c
    b       L02010914
L020108f4:
    fcmpu   cr0,f12,f13
    ble-    L02010900
    fmr     f12,f13
L02010900:
    stfs    f12,64(r11)
    lwz     r12,72(r31)
    lwz     r0,116(r12)
    cmpwi   r0,3
    blt-    L0201093c
L02010914:
    lbz     r0,132(r12)
    cmpwi   r0,0
    bne-    L0201093c
    lwz     r3,84(r12)
    bl      ext_02186008
    cmpwi   r3,0
    bne-    L0201093c
    lwz     r11,68(r31)
    li      r12,2
    stw     r12,68(r11)
L0201093c:
    lwz     r12,64(r31)
    lwz     r11,4(r12)
    lbz     r0,80(r11)
    cmpwi   r0,0
    beq-    L0201098c
    li      r12,1
    lbz     r10,37(r31)
    li      r0,0
    stb     r12,39(r31)
    lwz     r11,68(r31)
    stb     r10,38(r31)
    stb     r0,37(r31)
    stw     r0,40(r31)
    lwz     r10,92(r11)
    rlwinm. r12,r10,25,31,31
    beq-    L0201098c
    lfs     f0,72(r11)
    stfs    f0,60(r11)
    lwz     r10,68(r31)
    stw     r0,68(r10)
L0201098c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
