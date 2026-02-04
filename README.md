# Miku-Hyprland-Dotfiles – “The First Sound of the Future”

Hatsune Miku–inspired Arch Linux Hyprland rice with cyber‑futuristic aesthetics, music‑driven UI, and dynamic theming. Focused on a clean, fast, immersive, and expressive workflow where the desktop feels like Miku herself.

## Core Concept
- Treat Miku as a digital instrument/creative hub; UI adapts to music, wallpaper, and mood.
- Palette: turquoise + metallic gray base, neon accents, soft glow, DX7‑style grid patterns.
- Embed subtle “01” marks and occasional negi (leek) easter eggs.

## Components & Customization
### Hyprland
- Smooth animations with blur, shadows, rounded corners; workspace transitions tuned to beats.
- Keybind‑first, mouse‑optional workflow with modal navigation.
- Wallpaper‑driven color extraction to feed GTK/Waybar/terminal/CAVA themes.

### Waybar
- Minimal, icon‑heavy bar with turquoise highlights.
- Workspace indicators rendered as digital nodes; separators as thin neon lines.
- Music segment shows track info and BPM, exposes visualizer state.

### Quickshell Control Center
- Glassmorphism panel with toggles: Wi‑Fi, Bluetooth, audio output, mic, night mode.
- Soft glow borders and DX7 grid background; right‑side slide‑in gesture.

### Notifications
- Slide‑in shade on the right with synth‑wave sound cues and turquoise glow outlines.

### Music & Visualization
- MPD/Spotify with ncmpcpp; CAVA vertical bars or circular waveform in turquoise neon.
- UI accent colors react to genre/BPM; optional idle waveform in lockscreen.

### Terminal
- Foot/Kitty with transparent acrylic effect; Nerd Font with JP glyph support.
- Fastfetch banner uses custom Miku ASCII as a digital ID card (hostname, uptime).
- Supports image previews and inline pixel/Miku art.

### Theming & Visuals
- Animated wallpapers (Wallpaper Engine/alternative) with subtle motion, performance friendly.
- Auto‑extract colors from wallpaper; propagate to GTK, Waybar, Terminal, CAVA.
- Mood profiles: “Studio” (neutral gray + turquoise), “Stage” (neon + higher glow), “Chill” (pastel turquoise + soft blur).

### Lockscreen & Login
- Hyprlock with cyber idle Miku animation and digital font clock.
- SDDM themed splash/login with metallic gray base, turquoise highlights, and “01” marker.

### Launcher
- Rofi/Wofi themed with bilingual JP/EN typography, instant search, clutter‑free grid.
- Accent glow on selection; optional negi icon easter egg.

## Identity Details
- Primary text cues: “The First Sound of the Future” and “Find Your Music.”
- Subtle “01” in headers, lockscreen, and bar; negi motifs hidden in launcher/help overlays.

## Suggested File Layout (dotfiles)
- `~/.config/hypr/` – Hyprland config, animations, workspace tuning.
- `~/.config/waybar/` – Waybar modules, digital node workspaces, music segment.
- `~/.config/quickshell/` – Control center glass panel.
- `~/.config/dunst/` – Notification shade styling.
- `~/.config/ncmpcpp/` & `~/.config/cava/` – Music player + visualizer profiles.
- `~/.config/kitty/` or `~/.config/foot/` – Terminal theming, fastfetch ASCII.
- `~/.config/rofi/` or `~/.config/wofi/` – Launcher theme.
- `~/.config/hyprlock/` & `~/.config/sddm-themes/miku/` – Lockscreen and login.

## Quick Start (outline)
1. Install core packages: `hyprland waybar quickshell rofi wofi dunst cava mpd ncmpcpp kitty foot fastfetch sddm hyprlock`.
2. Place dotfiles per layout above; enable SDDM and Hyprland session.
3. Set animated wallpaper and run palette extractor script to sync colors.
4. Start mpd/Spotify + CAVA; enable music‑reactive accent pipeline.

## Notes
- Keep performance in mind: prefer subtle motion, limit blur radius on low‑power GPUs.
- All elements aim for a fast, minimal, expressive feel that keeps Miku front and center.
