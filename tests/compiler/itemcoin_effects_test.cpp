// Compiler test for ItemCoin_Effects_021212c4 (448 bytes). Not part of the game build.
// Structure from the matched assembly: two virtual setup calls and one setup call on the object at +508, three attach
// calls with name tables, then a loop over seven effect entries (20-byte records from +632). Each iteration checks two
// one-time flags, copies a string once, and adds a slot with a value from the sound table. External names and globals
// are supplied with --define at their game addresses.

extern "C" void SetupFx1(void *obj, void *a, int b);
extern "C" void SetupFx2(void *obj, void *a, int b, int c);
extern "C" void AttachEffect(void *obj, void *dest, const char *name);
extern "C" void AddSlot(void *obj, void *entry, int value);
extern "C" void FxInit(void *table, const char *str, int n);
extern "C" void *MemCpyAlias(void *dst, const void *src, unsigned int n);

extern const char kEffName1[];
extern const char kEffName2[];
extern const char kEffName3[];
extern const int kSoundTable[];
extern char kStrA[];
extern const char kStrB[];
extern char kFlagB;
extern int kFlagA;
extern int kFlagAnext;

typedef void (*ThisFn)(void *self);

void ItemCoin_Effects_021212c4(char *self) {
    SetupFx1(*(void **)(self + 508), *(void **)(self + 92), 1);
    ThisFn f1 = *(ThisFn *)(*(char **)self + 452);
    f1(self);
    ThisFn f2 = *(ThisFn *)(*(char **)self + 460);
    f2(self);

    SetupFx2(*(void **)(self + 508), self + 524, *(int *)(self + 76), 0);
    AttachEffect(*(void **)(self + 508), self + 572, kEffName1);
    AttachEffect(*(void **)(self + 508), self + 588, kEffName2);
    AttachEffect(*(void **)(self + 508), self + 604, kEffName3);

    char *obj = *(char **)(self + 508);
    if (*(int *)(obj + 8) != 0) {
        unsigned int i = 0;
        for (;;) {
            char *entry = (i < 7) ? (self + 632 + i * 20) : (self + 632);
            if (kFlagAnext == 0) {
                kFlagB = 0;
                kFlagAnext = 1;
            }
            if (kFlagA == 0) {
                MemCpyAlias(kStrA, kStrB, 158);
                kFlagA = 1;
            }
            if (i >= 7) {
                AddSlot(obj + 4, entry, 0);
                break;
            }
            if (kFlagB == 0) {
                FxInit((void *)kSoundTable, kStrA, 7);
                kFlagB = 1;
            }
            AddSlot(obj + 4, entry, kSoundTable[i]);
            ++i;
            if (i >= 7) {
                break;
            }
        }
    }
}
