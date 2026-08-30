# Flatpak build for Eden emulator

Builds a flatpak of Eden emulator from the official Appimage release.

Before building, install the runtime and SDK if it is not already installed:
`flatpak install org.kde.Platform//6.11 org.kde.Sdk//6.11 org.freedesktop.Sdk.Extension.llvm22 org.flatpak.Builder`

Then build and install locally with:
`flatpak run org.flatpak.Builder --install build-directory --user --force-clean dev.eden_emu.eden.yml`

For those running a native Discord client, and Eden flatpak, use https://github.com/Arcitec/discord-flatpak-rpc-bridge for rpc.
