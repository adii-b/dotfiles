#!/bin/bash

# Directory where wallpapers are stored
WALLPAPER_DIR=~/Pictures/wallpapers

# Get a list of valid wallpaper files
FILES=$(find "$WALLPAPER_DIR" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.gif" \) | sort)
FILENAMES=$(echo "$FILES" | while read -r FILE; do basename "$FILE"; done)

# Check if there are any files
if [ -z "$FILENAMES" ]; then
  echo "No wallpapers found."
  exit 1
fi

# Use rofi to select a file
SELECTED_FILE=$(echo "$FILENAMES" | rofi -dmenu -i -p "Select Wallpaper:")

# Check if a file was selected
if [ -z "$SELECTED_FILE" ]; then
  echo "No wallpaper selected."
  exit 1
fi

# Find the full path of the selected file
SELECTED_PATH=$(echo "$FILES" | while read -r FILE; do
  if [ "$(basename "$FILE")" == "$SELECTED_FILE" ]; then
    echo "$FILE"
    break
  fi
done)

# Set the selected file as wallpaper
swww img "$SELECTED_PATH" --transition-step 240 --transition-fps 60 --transition-type outer --transition-pos top-right

# Send a notification
notify-send "Wallpaper Changed" "Wallpaper changed to $SELECTED_FILE."

echo "Wallpaper changed to $SELECTED_FILE."
