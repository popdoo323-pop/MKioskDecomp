# Bird object: course data and loader (2026-10-08)

Source: content/course/Gu_MarioCircuit/course_muunt.byaml, converted to XML by the maintainer. The bird is used on this track. The raw tables are kept local in private/course_object_ids.csv.

## Current finding (Track Studio check, 2026-10-08)

- The bird is object ID 1039 in Gu_MarioCircuit. Track Studio labels it "Bird (1039)". The course XML has exactly three
  objects with ObjId 1039, and their positions and rotations match the three screenshots.
- ID 1039 occurs in no other course, which agrees with the maintainer's observation.
- Rotations in the XML are radians. For example, a Z value of 0.5267 rad is 30.18 degrees, as shown in the editor.
- The earlier index pairing was wrong. It put McJump at position 26, where ID 1039 sits in the list, but the editor shows
  Bird. The names list is not aligned with the ID list.
- The earlier 6003 conclusions are withdrawn with the index pairing they depended on.
- The code side: FUN_02232a34 has no branch for 0x40F (1039). The bird therefore takes the generic branch. The name that
  produces mapobj/Bird/Bird.bfres still has to be found in the object data.

## Correction (course comparison, 2026-10-08)

- ObjId 6003 is not a fixed bird ID. It appears in every course, but each course has its own list of IDs and names.
  In every course 6003 sits at a different index, and the name at that index is different. In Gu_MarioCircuit the name
  is Bird. In Gu_Airport it is RelayCar, in Gu_Cake WaterBox, in Gu_City CityBoat, in Gu_Cloud Sun, in Gu_FirstCircuit Coin,
  in Gu_Techno Start, in Gu_WaterPark TestStart, in Gu_Menu VRMenu and in test_WiFiTest1 ItemBox.
- The bird resource is present only in Gu_MarioCircuit. This matches the maintainer's observation.
- The earlier statement that the executable matches the bird by ID 6003 is withdrawn. The meaning of an ID depends on
  the course's own lists.
- Caveat: the ID list and the name list differ in length in most courses, so the index pairing is not guaranteed.

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

## Other courses

The file list has ten course folders with a course_muunt.byaml: Gu_Airport, Gu_Cake, Gu_City, Gu_Cloud, Gu_FirstCircuit,
Gu_MarioCircuit, Gu_Menu, Gu_Techno, Gu_WaterPark and test_WiFiTest1. Only Gu_MarioCircuit has been read. The bird's
presence in the other nine is unknown until their course files are provided.

## Still open

- The factory that maps an object ID to a class. The bird's class is not reached from the generic branch in this function.
  The next step is to find what the generic branch hands the object to (FUN_0227cfd0 is called on every path).
- The course-file layout of ObjId is taken from the XML export. Confirm the field meaning against the BYAML format.
