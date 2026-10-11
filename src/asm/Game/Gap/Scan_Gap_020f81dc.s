# Converted from the disassembly of 0x020f81dc (152 bytes). Name is a placeholder.
    .text
    .globl Scan_Gap_020f81dc
Scan_Gap_020f81dc:
    stwu    r1,-24(r1)
    lhz     r0,124(r3)
    clrlwi. r9,r0,31
    lwz     r11,120(r3)
    beq-    L020f8200
    lis     r12,4120
    lwz     r12,16332(r12)
    add     r11,r11,r12
    stw     r11,120(r3)
L020f8200:
    lis     r9,4097
    clrlwi  r0,r11,8
    lfd     f12,9408(r9)
    lis     r10,17200
    stw     r0,12(r1)
    lis     r8,4109
    stw     r10,8(r1)
    lfd     f11,8(r1)
    addi    r8,r8,-10608
    rlwinm  r0,r11,12,20,27
    fsub    f12,f11,f12
    add     r11,r8,r0
    lfs     f10,4(r11)
    lis     r12,4097
    frsp    f13,f12
    lis     r11,4097
    lfsx    f12,r8,r0
    lfs     f11,9416(r12)
    fmuls   f10,f10,f13
    lfs     f13,9400(r11)
    lis     r10,4120
    lfs     f0,16308(r10)
    fmadds  f11,f10,f11,f12
    stfs    f13,4(r4)
    fmuls   f10,f11,f0
    stfs    f13,8(r4)
    stfs    f10,0(r4)
    addi    r1,r1,24
    blr
