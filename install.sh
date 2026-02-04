#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/NoE114/Miku-Hyprland-Dotfiles.git"
TARGET_DIR="${1:-$HOME/Miku-Hyprland-Dotfiles}"
CONFIG_DIR="$HOME/.config"

info()  { printf "\033[1;36m[INFO]\033[0m %s\n" "$*"; }
error() { printf "\033[1;31m[ERROR]\033[0m %s\n" "$*"; }

ensure_arch() {
  if [[ ! -f /etc/arch-release ]]; then
    error "This installer targets Arch Linux (or Arch-based)."
    exit 1
  fi
}

install_packages() {
  local pkgs=(
    hyprland waybar swww rofi wofi dunst cava mpd ncmpcpp
    kitty foot fastfetch sddm hyprlock jq python-pywal playerctl
  )
  info "Installing packages via pacman (requires sudo)..."
  sudo pacman -Syu --needed "${pkgs[@]}"
}

clone_repo() {
  if [[ -d "$TARGET_DIR/.git" ]]; then
    info "Repository already exists at $TARGET_DIR, skipping clone."
  else
    info "Cloning repo to $TARGET_DIR..."
    git clone "$REPO_URL" "$TARGET_DIR"
  fi
}

deploy_configs() {
  info "Syncing config/ to $CONFIG_DIR ..."
  mkdir -p "$CONFIG_DIR"
  rsync -av "$TARGET_DIR/config/" "$CONFIG_DIR/"
}

prompt_resolution() {
  read -rp "Enter monitor name (e.g., eDP-1 or HDMI-A-1) [blank to skip]: " MON_NAME
  read -rp "Enter resolution@refresh (e.g., 1920x1080@60) [blank to skip]: " MON_MODE
  if [[ -n "${MON_NAME:-}" && -n "${MON_MODE:-}" ]]; then
    {
      echo "monitor = $MON_NAME,$MON_MODE,auto,1"
    } > "$CONFIG_DIR/hypr/monitor.conf"
    info "Monitor config written to $CONFIG_DIR/hypr/monitor.conf"
  else
    info "Skipping monitor override; default 'preferred' will be used."
  fi
}

main() {
  ensure_arch
  if ! mkdir -p "$TARGET_DIR" 2>/dev/null; then
    error "Cannot create or access $TARGET_DIR. Check path or permissions."
    exit 1
  fi
  if ! touch "$TARGET_DIR/.write_test" 2>/dev/null; then
    error "Cannot write to $TARGET_DIR. Choose a different location."
    exit 1
  fi
  rm -f "$TARGET_DIR/.write_test"
  clone_repo
  if ! install_packages; then
    error "Package installation failed. Check network, auth, or conflicts, then retry."
    exit 1
  fi
  deploy_configs
  prompt_resolution
  info "Done. Launch Hyprland to enjoy the setup."
}

main "$@"
