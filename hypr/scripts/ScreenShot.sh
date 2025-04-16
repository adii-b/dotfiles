#!/usr/bin/env bash

# config
SCREENSHOT_DIR="$HOME/Pictures/Screenshots"
TIMESTAMP() { date +"%Y-%m-%d_%H-%M-%S"; }

# make sure dir exists
mkdir -p "$SCREENSHOT_DIR"

# full‑screen shot
full_screenshot() {
  local fname="full_$(TIMESTAMP).png"
  local path="$SCREENSHOT_DIR/$fname"

  grim "$path" # grab all outputs :contentReference[oaicite:0]{index=0}
  notify "$path"
}

# area (region) shot
area_screenshot() {
  local fname="area_$(TIMESTAMP).png"
  local path="$SCREENSHOT_DIR/$fname"

  grim -g "$(slurp)" "$path" # select & grab region :contentReference[oaicite:1]{index=1}
  notify "$path"
}

# send desktop notification
notify() {
  if [[ -f "$1" ]]; then
    notify-send "📸 Screenshot saved" "$1"
  else
    notify-send "⚠️ Screenshot failed" "Couldn’t save to $1"
  fi
}

# dispatch based on first arg
case "$1" in
full) full_screenshot ;;
area) area_screenshot ;;
*)
  echo "Usage: $0 {full|area}"
  exit 1
  ;;
esac
