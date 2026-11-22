# NovaLinux — Harmony-inspired desktop edition

A Debian 13 live Linux project with a modern, HarmonyOS-inspired desktop aesthetic.
It is an independent community-style Linux build; it is not Huawei HarmonyOS and
does not contain Huawei proprietary code, artwork, or applications.

## What's included

- Debian 13 (trixie) amd64 live ISO build configuration
- XFCE desktop and LightDM login manager
- Plank floating dock autostart
- Dark desktop defaults, Papirus icons, Noto fonts
- Custom Nova gradient wallpaper
- Nova Welcome application and desktop shortcuts
- Common desktop utilities: browser, files, terminal, settings, network, audio and Bluetooth
- GitHub Actions workflow to build the ISO in the cloud

## Build the ISO using GitHub Actions (recommended)

1. Extract this ZIP.
2. Create a GitHub repository, for example `novalinux-harmony`.
3. Upload all extracted files and folders to the repository root.
4. Open the repository's **Actions** tab.
5. Select **Build NovaLinux ISO** and press **Run workflow** (or push to `main`).
6. Wait for the job to finish.
7. Open the completed workflow run and download the `novalinux-live-iso` artifact.

The artifact is an ISO file. Test it in a virtual machine before installing it on any computer.

## Build locally

Use a Debian 13 amd64 machine or VM. Do not run this build directly in Android/Termux.

```bash
sudo apt update
sudo apt install -y live-build debootstrap squashfs-tools xorriso
sudo ./build.sh
```

The generated ISO will be placed in `output/`.

## Testing

- First boot the ISO in a VM with at least 2 GB RAM (4 GB recommended).
- Test display, keyboard, mouse, sound, networking and suspend/resume.
- Check the live session before attempting installation.
- This starter project is not certified for every device. Back up important data and do not install over an existing OS unless you understand the partitioning process.

## Notes

This build is a practical starter desktop, not a finished commercial operating system.
Some visual details depend on graphics drivers, screen size and XFCE/GTK theme support.
The included wallpaper is original project artwork.
