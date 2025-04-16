#!/bin/bash
# Rofi menu for Quick Edit / View of Settings (SUPER E)

configs="$HOME/.config/hypr/configs"
UserConfigs="$HOME/.config/hypr/UserConfigs"

menu() {
  printf "View Env-variables\n"
  printf "View Window-Rules\n"
  printf "View Startup_Apps\n"
  printf "View User-Keybinds\n"
  printf "View Monitors\n"
  printf "View Laptop-Keybinds\n"
  printf "View User-Settings\n"
  printf "View Workspace-Rules\n"
  printf "View Default-Settings\n"
  printf "View Default-Keybinds\n"
}

main() {
  choice=$(menu | rofi -dmenu -i -p "Select a file to edit:")
  case $choice in
  "View Env-variables")
    alacritty -e nvim "$UserConfigs/ENVariables.conf"
    ;;
  "View Window-Rules")
    alacritty -e nvim "$UserConfigs/WindowRules.conf"
    ;;
  "View Startup_Apps")
    alacritty -e nvim "$UserConfigs/Startup_Apps.conf"
    ;;
  "View User-Keybinds")
    alacritty -e nvim "$UserConfigs/UserKeybinds.conf"
    ;;
  "View Monitors")
    alacritty -e nvim "$UserConfigs/Monitors.conf"
    ;;
  "View Laptop-Keybinds")
    alacritty -e nvim "$UserConfigs/Laptops.conf"
    ;;
  "View User-Settings")
    alacritty -e nvim "$UserConfigs/UserSettings.conf"
    ;;
  "View Workspace-Rules")
    alacritty -e nvim "$UserConfigs/WorkspaceRules.conf"
    ;;
  "View Default-Settings")
    alacritty -e nvim "$configs/Settings.conf"
    ;;
  "View Default-Keybinds")
    alacritty -e nvim "$configs/Keybinds.conf"
    ;;
  *) ;;
  esac
}

main
