#!/bin/bash
# Rofi menu for Quick Edit / View of Settings (SUPER E)

configs="$HOME/.config/hypr/configs"
UserConfigs="$HOME/.config/hypr/UserConfigs"
UserScripts="$HOME/.config/hypr/UserScripts"
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
  printf "View UserScripts\n"
}

main() {
  choice=$(menu | rofi -dmenu -i -theme ~/.config/rofi/launchers/type-6/style-1.rasi -p "Select a file to edit:")
  case $choice in
  "View Env-variables")
    kitty -e nvim "$UserConfigs/ENVariables.conf"
    ;;
  "View Window-Rules")
    kitty -e nvim "$UserConfigs/WindowRules.conf"
    ;;
  "View Startup_Apps")
    kitty -e nvim "$UserConfigs/Startup_Apps.conf"
    ;;
  "View User-Keybinds")
    kitty -e nvim "$UserConfigs/UserKeybinds.conf"
    ;;
  "View Monitors")
    kitty -e nvim "$UserConfigs/Monitors.conf"
    ;;
  "View Laptop-Keybinds")
    kitty -e nvim "$UserConfigs/Laptops.conf"
    ;;
  "View User-Settings")
    kitty -e nvim "$UserConfigs/UserSettings.conf"
    ;;
  "View Workspace-Rules")
     kitty -e nvim "$UserConfigs/WorkspaceRules.conf"
    ;;
  "View Default-Settings")
    kitty -e nvim "$configs/Settings.conf"
    ;;
  "View Default-Keybinds")
    kitty -e nvim "$configs/Keybinds.conf"
    ;;
   "View UserScripts")
    kitty -e nvim "$configs/UserScripts/"
    ;;
  *) ;;
  esac
}

main
