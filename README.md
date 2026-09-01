# Eden emulator flatpak

## Making an issue (PLEASE READ)
- If an issue happens on both Eden flatpak, and the official appimages, you may send the issue [upstream](https://git.eden-emu.dev/eden-emu/eden/issues). Send flatpak specific issues here.

## Known issues/limitations
- Discord RPC failing to work in systems with a native Discord client, and Eden as a flatpak. Please follow the [guide](https://github.com/Arcitec/discord-flatpak-rpc-bridge) on how to properly set it up.
- XDG toplevel icons appear to be distorted, blurry, or not showing as intended from the appimage in any way. We are still trying to figure out this issue.

## Getting started:

Before building, install the runtime, SDK, and flatpak builder:
```sh
flatpak install org.kde.Platform//6.11 org.kde.Sdk//6.11 org.freedesktop.Sdk.Extension.llvm22 org.flatpak.Builder
```

Then build and install locally with:
```sh
flatpak run org.flatpak.Builder --install build-directory --user --force-clean dev.eden_emu.eden.yml
```
