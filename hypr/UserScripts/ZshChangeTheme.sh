#!/bin/bash

# Directory where Oh My Zsh themes are stored
THEMES_DIR=~/.oh-my-zsh/themes

# Get a list of theme files (excluding the .zsh-theme extension)
THEMES=$(ls "$THEMES_DIR" | grep -E '\.zsh-theme$' | sed 's/\.zsh-theme$//')

# Check if there are any themes
if [ -z "$THEMES" ]; then
  echo "No themes found."
  exit 1
fi

# Use rofi to select a theme
SELECTED_THEME=$(echo "$THEMES" | rofi -dmenu -i -theme ~/.config/rofi/launchers/type-6/style-1.rasi -p "Select Zsh Theme:")

# Check if a theme was selected
if [ -z "$SELECTED_THEME" ]; then
  echo "No theme selected."
  exit 1
fi

# Update the .zshrc file with the selected theme
sed -i "s/^ZSH_THEME=.*/ZSH_THEME=\"$SELECTED_THEME\"/" ~/.zshrc

# Apply the changes by reloading .zshrc
source ~/.zshrc

# Send a notification
notify-send "Zsh Theme changed to $SELECTED_THEME."

echo "Theme changed to $SELECTED_THEME and applied."
