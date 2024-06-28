#!/bin/bash
# Rofi menu for Quick Edit / View of Settings (SUPER E)

configs="$HOME/.config/hypr/configs"
UserConfigs="$HOME/.config/hypr/UserConfigs"

menu(){
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
    choice=$(menu | wofi --show=dmenu  )
    case $choice in
        *"View Env-variables")
            kitty -e vim "$UserConfigs/ENVariables.conf"
            ;;
        *"View Window-Rules")
            kitty -e vim "$UserConfigs/WindowRules.conf"
            ;;
        *"View Startup_Apps")
            kitty -e vim "$UserConfigs/Startup_Apps.conf"
            ;;
        *"View User-Keybinds")
            kitty -e vim "$UserConfigs/UserKeybinds.conf"
            ;;
        *"View Monitors")
            kitty -e vim "$UserConfigs/Monitors.conf"
            ;;
        *"View Laptop-Keybinds")
            kitty -e vim "$UserConfigs/Laptops.conf"
            ;;
        *"View User-Settings")
            kitty -e vim "$UserConfigs/UserSettings.conf"
            ;;
        *"View Workspace-Rules")
            kitty -e vim "$UserConfigs/WorkspaceRules.conf"
            ;;
        *"View Default-Settings")
            kitty -e vim "$configs/Settings.conf"
            ;;
        *"View Default-Keybinds")
            kitty -e vim "$configs/Keybinds.conf"
            ;;
        *)
            ;;
    esac
}

main
