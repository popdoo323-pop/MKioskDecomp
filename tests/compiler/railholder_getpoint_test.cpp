// Compiler test for RailHolder_GetPoint_02101f84 (52 bytes). Not part of the game build.
// Returns the element at index (i mod count) when that remainder is below the limit at +0x10, else null. Count is an
// unsigned halfword at +0x4, the limit a word at +0x10, the array pointer a word at +0x18.
void *RailHolder_GetPoint_02101f84(char *h, int i) {
    int count = *(unsigned short *)(h + 4);
    int q = i / count;
    unsigned int rem = (unsigned int)(i - q * count);
    if (rem >= *(unsigned int *)(h + 0x10)) {
        return 0;
    }
    void **array = *(void ***)(h + 0x18);
    return array[rem];
}
