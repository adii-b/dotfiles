#!/bin/bash

############################################################################################################
##   ______  __      __  _______   ________  _______    ______   __    __   ______   __    __  ________   ##
##  /      \|  \    /  \|       \ |        \|       \  /      \ |  \  |  \ /      \ |  \  /  \|        \  ##
## |  $$$$$$\\$$\  /  $$| $$$$$$$\| $$$$$$$$| $$$$$$$\|  $$$$$$\| $$\ | $$|  $$$$$$\| $$ /  $$| $$$$$$$$  ##
## | $$   \$$ \$$\/  $$ | $$__/ $$| $$__    | $$__| $$| $$___\$$| $$$\| $$| $$__| $$| $$/  $$ | $$__      ##
## | $$        \$$  $$  | $$    $$| $$  \   | $$    $$ \$$    \ | $$$$\ $$| $$    $$| $$  $$  | $$  \     ##
## | $$   __    \$$$$   | $$$$$$$\| $$$$$   | $$$$$$$\ _\$$$$$$\| $$\$$ $$| $$$$$$$$| $$$$$\  | $$$$$     ##
## | $$__/  \   | $$    | $$__/ $$| $$_____ | $$  | $$|  \__| $$| $$ \$$$$| $$  | $$| $$ \$$\ | $$_____   ##
##  \$$    $$   | $$    | $$    $$| $$     \| $$  | $$ \$$    $$| $$  \$$$| $$  | $$| $$  \$$\| $$     \  ##
##   \$$$$$$     \$$     \$$$$$$$  \$$$$$$$$ \$$   \$$  \$$$$$$  \$$   \$$ \$$   \$$ \$$   \$$ \$$$$$$$$  ##
##                                                                                                        ##
## Power Menu                                                                                       ##
## Created by Cybersnake                                                                                  ##
############################################################################################################

DIR="$HOME/.config"
rofi_cmd="rofi -theme $DIR/rofi/powermenu.rasi"

uptime=$(awk -F'[ ,:]+' '/up/ {min=0; for(i=2; i<=NF; i++) {if ($(i) ~ /hour/) min += $(i-1)*60; if ($(i) ~ /minute/) min += $(i-1);} print min " minutes"}' <<< "$(uptime -p)")

# bat_health=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | rg capacity | awk '{print$2}')

# Options
Shutdown="󰐥 Shutdown"
Reboot="󰦛 Reboot"
Lock=" Lock"
Suspend=" Suspend"
Logout="󰍃 Logout"

options="$Shutdown\n$Reboot\n$Lock\n$Suspend\n$Logout"

# Show menu
chosen="$(echo -e "$options" | $rofi_cmd -p "Uptime <=> $uptime" -dmenu)"

# Command for specific choices
case $chosen in
"$Shutdown")
  systemctl poweroff
  ;;
"$Reboot")
  systemctl reboot
  ;;
"$Suspend")
  systemctl suspend
  ;;
"$Lock")
  hyprlock
  ;;
"$Logout")
  hyprctl dispatch exit
  ;;
esac
