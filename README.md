# Playable desktop downloads

Make and test 3D games in a local studio with Codex or Claude, Blender 4.5 LTS and Godot 4.6.

[Visit the website](https://playable-website.vercel.app) · [Release notes and checksums](https://github.com/gracelungu/playable-releases/releases/tag/v0.1.6)

## Download v0.1.6

| Platform | Download |
| --- | --- |
| macOS Apple silicon (M1 and later) | [Playable-mac-arm64.zip](https://github.com/gracelungu/playable-releases/releases/download/v0.1.6/Playable-mac-arm64.zip) |
| macOS Intel | [Playable-mac-x64.zip](https://github.com/gracelungu/playable-releases/releases/download/v0.1.6/Playable-mac-x64.zip) |
| Windows 64-bit Intel/AMD | [Playable-windows-x64.zip](https://github.com/gracelungu/playable-releases/releases/download/v0.1.6/Playable-windows-x64.zip) |
| Ubuntu 24.04 64-bit Intel/AMD | [Playable-linux-x64.deb](https://github.com/gracelungu/playable-releases/releases/download/v0.1.6/Playable-linux-x64.deb) |

macOS: unzip and move Playable.app to Applications. Find your chip in Apple menu → About This Mac. These early-access builds have verified ad-hoc signatures, but Developer ID signing and notarization are still pending. Gatekeeper may block opening the app or require approval in Privacy & Security.

Windows: extract the complete ZIP, then open Playable.exe inside its folder. Linux: install the .deb through Ubuntu's software installer, which also installs required dependencies.

Blender and Godot are included for the matching system. If Blender cannot start, open Settings → Engines → Download and repair Blender. Playable asks before downloading the official native build and verifies its checksum. A compatible separate installation can also be selected with Browse.

AI accounts and usage are separate. Verify downloads with [SHA256SUMS.txt](https://github.com/gracelungu/playable-releases/releases/download/v0.1.6/SHA256SUMS.txt). Engine licenses, notices and the matching Blender source archive are included in each package.

This repository distributes installers only. Application source is maintained separately.
