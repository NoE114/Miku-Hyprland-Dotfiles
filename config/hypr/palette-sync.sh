#!/usr/bin/env bash
# Extract dominant colors from wallpaper using wal (fallback to defaults) and write colors.conf
set -euo pipefail

WALL=${1:-${HOME}/.config/wallpapers/miku-default.jpg}
OUT=${HOME}/.config/hypr/colors.conf

if command -v wal >/dev/null 2>&1; then
  wal -n -i "$WALL" >/dev/null
  SRC="${HOME}/.cache/wal/colors.json"
  if [ -f "$SRC" ]; then
    ACCENT=$(jq -r '.colors.color2' "$SRC")
    BG=$(jq -r '.special.background' "$SRC")
    CAT=$(jq -r '.colors.color4' "$SRC")
    SHADOW=$(jq -r '.colors.color0' "$SRC")
    {
      echo "col.active = ${ACCENT}ff"
      echo "col.inactive = ${BG}ff"
      echo "col.border = ${ACCENT}ff"
      echo "col.group = ${CAT}cc"
      echo "col.shadow = ${SHADOW}aa"
    } > "$OUT"
    exit 0
  fi
fi

cat > "$OUT" <<'EOF'
col.active = rgba(0x4dd0e1ff)
col.inactive = rgba(0x1a1f27ff)
col.border = rgba(0x4dd0e1ff)
col.group = rgba(0x00ffd5aa)
col.shadow = rgba(0x0c1622aa)
EOF
