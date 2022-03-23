# vrcmods-loadscreen-mute

MelonLoader mod to disable the loading screen music in VRChat.

**Before using any of the materials in this repo make sure you are familiar with the game's current TOU.**

## Building

### Requirements

- Docker (Native Linux or WSL),
- Pre-generated set of MelonLoader reference assemblies
    - Additionally, this mod depends on [`VRChatUtilityKit`](https://github.com/loukylor/VRC-Mods/releases)

### Usage

- Clone this repo and submodules using the `--recursive` option.
- Copy reference assemblies from the MelonLoader folder into `Dependencies/`:
    - `Managed/*.dll`
    - `MelonLoader.dll`
    - `Mods/VRChatUtilityKit.dll`
- Run the `build.sh` script.

The output binary will be placed into the `Outputs/` folder.

## Installation

- Install [`VRChatUtilityKit`](https://github.com/loukylor/VRC-Mods/releases).
- [**Download**](https://github.com/islandcontroller/vrcmods-loadscreen-mute/releases/latest) the pre-built mod binary or build it yourself.
- Copy `LoadscreenMute.dll` into the VRChat `Mods/` folder.

The mod should show up in the mod listing in the MelonLoader console upon startup.

## Licensing

If not stated otherwise in the specific file, the contents of this project are licensed under the MIT License. The full license text is provided in the [`LICENSE`](LICENSE) file.

    SPDX-License-Identifier: MIT

## References and related projects

* MelonLoader: https://github.com/LavaGang/MelonLoader
* VRChatUtilityKit: https://github.com/loukylor/VRC-Mods