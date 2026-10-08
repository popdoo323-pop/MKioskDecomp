# Bird object: course data and loader (2026-10-08)

Source: course_muunt.byaml (converted to XML by the maintainer). The raw tables are kept local in private/course_object_ids.csv.

## Verified

- In course_muunt, the Bird is object ID 6003 and it occurs once in the Obj list.
- The name list MapObjResList has "Bird" at index 4. MapObjIdList has 6003 at index 4. The pairing by index is supported
  by ItemBox (8008 at index 1, with 12 instances). Other IDs are also used in the course.
- The course-object loader FUN_02232a34 special-cases IDs 0x3fa (1018, Coin), 0x3f5 (1013) and 0x232f (9007) to load
  an ItemBox model. Other IDs take the generic branch, which builds "%s/%s.bfres" from the object's name.
- The bird (6003) is not one of the special-cased IDs, so it takes the generic branch. The model path is therefore
  mapobj/Bird/Bird.bfres, built from the name "Bird" in the course data. This agrees with the bfres and bars files.

## Conflict

- The name list says 9007 is "Kuribo" at index 0. The loader groups 0x232F (9007) with ItemBox. Both cannot be right.
  The name list may be off by one for index 0, or 9007 may be a special-case ID. Do not use either label until this
  is checked.

## Still open

- The factory that maps an object ID to a class. The bird's class is not reached from the generic branch in this function.
  The next step is to find what the generic branch hands the object to (FUN_0227cfd0 is called on every path).
- The course-file layout of ObjId is taken from the XML export. Confirm the field meaning against the BYAML format.
