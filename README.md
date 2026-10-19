# Playable installers

Public installation manifests and desktop releases. Application source is maintained separately.

## macOS (Apple silicon or Intel, macOS 13.1+)

```sh
brew tap gracelungu/playable https://github.com/gracelungu/playable-releases
brew install --cask gracelungu/playable/playable
```

Install Homebrew first from https://brew.sh if needed. The cask chooses your Mac's architecture and verifies its SHA-256. Early-access Mac builds are ad-hoc signed, not Developer ID signed or notarized; approve opening in System Settings → Privacy & Security if macOS blocks it. This installer does not disable Gatekeeper. Update with `brew update && brew upgrade --cask gracelungu/playable/playable`.

## Windows 11 (Intel / AMD 64-bit)

```powershell
if (-not (Get-Command git -ErrorAction SilentlyContinue)) { scoop install git }
scoop bucket add playable https://github.com/gracelungu/playable-releases
scoop install playable/playable
```

Install Scoop first using https://scoop.sh. Scoop verifies the package checksum, extracts the whole application, and adds a Start menu shortcut. Update with `scoop update; scoop update playable`. ARM Windows is not supported by this package.

## Ubuntu 24.04 (Intel / AMD 64-bit)

```sh
curl -fsSL https://raw.githubusercontent.com/gracelungu/playable-releases/main/installers/install.sh -o /tmp/playable-install.sh
sh /tmp/playable-install.sh
```

The script downloads the published .deb, verifies its pinned SHA-256, and installs through apt. Inspect it before running if you prefer. apt asks for administrator authorization and dependency confirmation. Re-run to upgrade; remove with `sudo apt remove playable`. This is not an apt repository. No automatic repository is added.

## Ask your coding assistant

Install Playable on this computer using the instructions at https://github.com/gracelungu/playable-releases. Detect my OS and CPU, choose the supported installer, verify checksums, and ask me to complete administrator or sign-in prompts. Open Playable afterward.

## AI setup

Connect Codex or Claude Code with your own account inside Playable. Native runtimes, Blender and Godot are included. AI accounts and usage are separate. Additional API providers are available in Settings.

Manual downloads and checksums: https://github.com/gracelungu/playable-releases/releases

[Website](https://playable-website-free-projects-0e54be6d.vercel.app)
