#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Clipboard Manager. This script uses cliphist, wofi, and wl-copy.

# Get clipboard history from cliphist and format it to exclude IDs
history=$(cliphist list | awk '{$1=""; print substr($0, 2)}')

# Display clipboard history using wofi and capture the selected entry
selected=$(echo "$history" | wofi --dmenu --prompt="Clipboard History: ")

# Copy the selected item to the clipboard if not empty
if [ -n "$selected" ]; then
  echo "$selected" | wl-copy
  notify-send "Selected item copied to clipboard"
fi
