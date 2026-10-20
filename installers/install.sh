#!/bin/sh
# Viewport for Ubuntu 24.04 x86_64. Package bytes are pinned and verified before apt runs.
set -eu
if [ "$(uname -s)" != Linux ] || [ "$(uname -m)" != x86_64 ]; then
  echo 'Viewport requires Ubuntu 24.04 on Intel/AMD 64-bit. Choose another platform on the website.' >&2
  exit 1
fi
if [ ! -r /etc/os-release ]; then echo 'Cannot identify this Linux distribution.' >&2; exit 1; fi
. /etc/os-release
if [ "${ID:-}" != ubuntu ] || [ "${VERSION_ID:-}" != 24.04 ]; then
  echo 'This Viewport build is tested on Ubuntu 24.04. See the website for supported platforms.' >&2
  exit 1
fi
for tool in curl sha256sum apt-get mktemp chmod; do
  if ! command -v "$tool" >/dev/null 2>&1; then echo "Install $tool before continuing." >&2; exit 1; fi
done
if [ "$(id -u)" -ne 0 ] && ! command -v sudo >/dev/null 2>&1; then echo 'sudo is required to install the package.' >&2; exit 1; fi
work_dir=$(mktemp -d /tmp/viewport-install.XXXXXXXX)
trap 'rm -rf "$work_dir"' EXIT HUP INT TERM
# apt's _apt user needs traversal access; the package contains no private data.
chmod 755 "$work_dir"
package="$work_dir/Viewport-linux-x64.deb"
echo 'Downloading Viewport 0.2.1 (about 1 GB, including Blender and Godot)…'
curl --fail --location --proto '=https' --tlsv1.2 --retry 3 'https://github.com/gracelungu/viewport-releases/releases/download/v0.2.1/Viewport-linux-x64.deb' --output "$package"
printf '%s  %s\n' '7bd5ec0ce4b96d7f059961fcf8e84b3f0ad0dda6c89b97dccd7eef0b69b83d64' "$package" | sha256sum --check --status || { echo 'Checksum mismatch. Nothing was installed.' >&2; exit 1; }
chmod 644 "$package"
echo 'Package verified. apt may ask for your administrator password and confirmation.'
if [ "$(id -u)" -eq 0 ]; then apt-get install "$package"; else sudo apt-get install "$package"; fi
echo 'Viewport installed. Open it from your applications menu and connect your AI account.'
