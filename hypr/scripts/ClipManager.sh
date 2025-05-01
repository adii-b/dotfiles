#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Clipboard Manager. This script uses cliphist, rofi, and wl-copy.

# Get clipboard history from cliphist and format it to exclude IDs
history=$(cliphist list | awk '{$1=""; print substr($0, 2)}')

# Display clipboard history using rofi and capture the selected entry
selected=$(echo "$history" | rofi -dmenu -i -p "Clipboard History:" -theme ~/.config/rofi/launchers/type-7/style-1.rasi)

# Copy the selected item to the clipboard if not empty
if [ -n "$selected" ]; then
  echo "$selected" | wl-copy
  notify-send "Selected item copied to clipboard"
fi
