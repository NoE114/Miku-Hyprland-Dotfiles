# Miku-Hyprland-Dotfiles – “The First Sound of the Future”

Arch Linux Hyprland rice with cyber‑futuristic aesthetics, music‑driven UI, and dynamic theming. Clean, fast, immersive, expressive—Miku as the OS.

## What’s Included (dotfiles)
- **Hyprland** (`config/hypr/hyprland.conf`): Blur/rounded, beat‑friendly animations, keybind workflow, wallpaper auto‑palette hook.
- **Waybar** (`config/waybar/`): Minimal icon bar, turquoise nodes, music + system modules.
- **Palette sync** (`config/hypr/palette-sync.sh`): wal‑based color extraction → shared palette.
- **Rofi launcher** (`config/rofi/miku.rasi`): JP/EN typography, neon glow selection.
- **Kitty/Foot** (`config/kitty/`, `config/foot/`): Transparent acrylic terminals.
- **CAVA + MPD/ncmpcpp** (`config/cava/`, `config/mpd/`, `config/ncmpcpp/`): Music + visualization.
- **Dunst** (`config/dunst/dunstrc`): Right‑side glow notifications.
- **Hyprlock + SDDM** (`config/hyprlock/`, `config/sddm/theme.conf`): Cyber lock/login with “01”.
- **Fastfetch** (`config/fastfetch/`): Miku ASCII ID card.

## Quick Start
1) Install: `hyprland waybar swww rofi wofi dunst cava mpd ncmpcpp kitty foot fastfetch sddm hyprlock jq python-pywal playerctl swww`.
2) Copy `config/` to `~/.config/` (or symlink). Ensure `~/.config/wallpapers/miku-default.jpg` exists (any Miku image works).
3) Run palette sync: `~/.config/hypr/palette-sync.sh ~/.config/wallpapers/miku-default.jpg`.
4) Start Hyprland; Waybar, Dunst, MPD, CAVA autostart. Set mpd music dir in `config/mpd/mpd.conf`.

## Notes / Identity
- Palette: turquoise + metallic gray, neon accent, DX7 grid inspiration; “01” and negi easter eggs.
- Mood: Studio (neutral), Stage (neon/glow), Chill (soft blur). Tune blur and gaps for performance GPUs.
