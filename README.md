## Eden flatpak module

> This repo is not endorsed by Eden

## What is this place?
We provide the metainfo required for appstream, a simple launcher script for Discord RPC, and some screen shots for [Eden](https://flathub.org/en/apps/dev.eden_emu.eden). \
Do not send issues here. Read below for more information.

## faq
Welcome! Before making an issue, please follow these steps:
- Eden is on the latest stable release
- My issue does NOT happen on the official AppImages
- I have not edited Eden's permissions
- My issue isn't in the known issues

If your issue happens on the official AppImages, please make an [issue here](https://github.com/eden-emulator/Issue-Reports/issues). \
If your issue happens only the flatpak build, make an issue in [this repo](https://github.com/flathub/dev.eden_emu.eden/issues). \
If you're having trouble with Discord RPC, see [this guide](https://github.com/flathub/com.discordapp.Discord/wiki/Rich-Precense-(discord-rpc)).

## How to build Eden flatpak
- A sane version of Git
- Flatpak from your distro's repo, ideally >=1.18
- The latest KDE Runtime, KDE SDK, llvm, and flatpak builder. 
```
git clone https://github.com/flathub/dev.eden_emu.eden
flatpak install flathub org.kde.Platform org.kde.Sdk org.freedesktop.Sdk.Extension.llvm23 org.flatpak.Builder
```

Build! 
```
 flatpak run org.flatpak.Builder --install build-directory --user --force-clean dev.eden_emu.eden.yml
```
