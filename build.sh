#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p output
sudo lb clean --purge || true
sudo lb config \
  --mode debian \
  --distribution trixie \
  --architectures amd64 \
  --binary-images iso-hybrid \
  --archive-areas "main contrib non-free-firmware" \
  --debian-installer live \
  --iso-application "NovaLinux Harmony Edition" \
  --iso-volume "NOVALINUX"
sudo lb build
find . -maxdepth 1 -type f -name '*.iso' -exec mv -f {} output/ \;
echo "Build complete. ISO files are in output/"
