// Compiler test for ItemCoin_PoolInit_02133314 (376 bytes). Not part of the game build.
// Structure from the matched assembly: set up the "ItemCoin" pool, read the slot count (stored at +0x94), allocate a
// slot array through the system object's allocator (stored at +0x28, count at +0x24, zeroed), then create one item per
// slot and place it in the first free slot, advancing a cursor at +0x30. Raw offsets are kept so the accesses match.
// External names are supplied with --define; the pool name is an extern array at its game address.

extern "C" void PoolSetup(void *block, const char *name, ...);
extern "C" int ItemIdCount(int *seven);
extern "C" void *CreateItem(int *index);
extern "C" void *SysGetter(void *global);
extern void *const g_sys_ptr;
extern const char kPoolName[];

typedef void *(*AllocFn)(void *sys, int size, int align);

void ItemCoin_PoolInit_02133314(char *self) {
    int seven = 7;
    PoolSetup(self + 0x38, kPoolName);
    int count = ItemIdCount(&seven);
    *(int *)(self + 0x94) = count;

    if (count > 0) {
        char *sys = (char *)SysGetter(g_sys_ptr);
        AllocFn alloc = *(AllocFn *)(*(char **)(sys + 0xc) + 0x34);
        void *block = alloc(sys, count * 4, 0x40);
        if (block != 0) {
            *(int *)(self + 0x24) = count;
            *(void **)(self + 0x28) = block;
        }
    }

    int filled = *(int *)(self + 0x24);
    if (filled > 0) {
        void **array = *(void ***)(self + 0x28);
        for (int i = 0; i < filled; ++i) {
            array[i] = 0;
        }
    }

    *(unsigned int *)(self + 0x30) = 0;
    int total = *(int *)(self + 0x94);
    for (int idx = 0; idx < total; ++idx) {
        char *item = (char *)CreateItem(&idx);
        *(char **)(item + 4) = self;
        *(int *)(item + 8) = *(int *)(self + 8);

        unsigned int cursor = *(unsigned int *)(self + 0x30);
        unsigned int slots = *(unsigned int *)(self + 0x24);
        void **base = *(void ***)(self + 0x28);
        void **slot = (cursor < slots) ? base + cursor : base;
        if (*slot == 0) {
            *(unsigned int *)(self + 0x30) = cursor + 1;
            slot = (cursor < slots) ? base + cursor : base;
            *slot = item;
        }
    }
}
