#!/bin/bash
# Rofi menu for Quick Edit / View of Settings (SUPER E)

configs="$HOME/.config/hypr/configs"
UserConfigs="$HOME/.config/hypr/UserConfigs"
export "MICRO_TRUECOLOR=1"

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
  choice=$(menu | rofi -dmenu -i -theme ~/.config/rofi/launchers/type-6/style-1.rasi -p "Select a file to edit:")
  case $choice in
  "View Env-variables")
    kitty -e micro "$UserConfigs/ENVariables.conf"
    ;;
  "View Window-Rules")
    kitty -e micro "$UserConfigs/WindowRules.conf"
    ;;
  "View Startup_Apps")
    kitty -e micro "$UserConfigs/Startup_Apps.conf"
    ;;
  "View User-Keybinds")
    kitty -e micro "$UserConfigs/UserKeybinds.conf"
    ;;
  "View Monitors")
    kitty -e micro "$UserConfigs/Monitors.conf"
    ;;
  "View Laptop-Keybinds")
    kitty -e micro "$UserConfigs/Laptops.conf"
    ;;
  "View User-Settings")
    kitty -e micro "$UserConfigs/UserSettings.conf"
    ;;
  "View Workspace-Rules")
    kitty -e micro "$UserConfigs/WorkspaceRules.conf"
    ;;
  "View Default-Settings")
    kitty -e micro "$configs/Settings.conf"
    ;;
  "View Default-Keybinds")
    kitty -e micro "$configs/Keybinds.conf"
    ;;
  *) ;;
  esac
}

main
