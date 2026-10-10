# Reference tools from the GHS and Wii U projects (2026-10-10)

These tools come from other projects. Their code is not copied into this repo. Each one is run locally on the maintainer's machine.

## ghs-demangle (Chadderz121, GPL-2.0)
- A complete C# implementation (about 790 lines). It reads mangled names one per line and prints demangled names.
- The author notes the mangling rules were guessed from symbols, so some output may be wrong.
- The jackwakefield/ghs-demangler repo is incomplete: its Demangle() only checks the prefix and returns an empty string.

What the binary contains (checked 2026-10-10):
- 195 Green Hills-mangled symbol names, all in import sections. Examples: Create__8MVPlayerSFv, Finalize__Q2_2nn3actFv,
  GetAccountId__Q2_2nn3actFPc. They name library functions from the nn:: networking libraries and MVPlayer.
- None of them is in the game's own code. The demangler will therefore name imports, not Turbo's functions.
- The names are listed in private/mangled_import_names.txt (kept local: they are game symbol names).

Use: build ghs-demangle on Windows with Visual Studio or the .NET SDK, then run it on private/mangled_import_names.txt.

## CXXAnalyzer (Luminyx1)
- A Ghidra script (CXXAnalyzer.java, about 1,240 lines) that reconstructs classes from GHS-ABI binaries.
- Source checked: no network, file or process calls. It is a Ghidra analysis script.
- It changes the Ghidra project when it runs. Back up the project (File > Export Program) before running it.
- Run it from Ghidra's Script Manager (Window > Script Manager). This does not need GHIDRA_MCP_ALLOW_SCRIPTS.

## Not used
- The Pastebin link: not opened. A raw paste is likely a license key or crack.
- Pokemon-Unity-for-Wii-U: not related to the compiler question. Not checked.

## Not a license
Neither tool is a substitute for a Green Hills license. The Green Hills compile test stays blocked until a valid license is available.
