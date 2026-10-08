# Repository structure

| Path | Tracked | Contents |
|---|---|---|
| `README.md`, `LICENSE`, `.gitignore`, `.gitattributes` | yes | project info, licensing, ignore rules |
| `config/hashes.txt` | yes | reference SHA-256 and sizes for the binaries |
| `docs/` | yes | analysis notes and verification logs. Each file says what is verified and what is not |
| `symbols/` | yes | function, import and field tables with addresses and proposed names |
| `include/` | yes | class layouts with observed offsets. Placeholder names are marked in each file |
| `tools/` | yes | RPX reader (`rpxlib.py`), section listing (`rpx_info.py`) and verification (`rpx_verify.py`) |
| `orig/` | only `README.md` | your own dumps go here. Git-ignored |
| `private/` | no | raw tables and name lists extracted from the game. Local reference only, git-ignored |

There is no `src/` tree yet. Function bodies are not written. The function addresses to match are listed in
`symbols/coin_functions.csv` and `symbols/tire_audio_functions.csv`. Source files will be added once there is code to
compare against a build.

The layout is loosely inspired by SMGCommunity/Petari, but no code is copied from it.
