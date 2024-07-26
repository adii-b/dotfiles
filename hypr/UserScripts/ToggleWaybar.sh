#!/bin/bash

# Path to Waybar executable
WAYBAR_CMD="waybar"

# Check if Waybar is running
if pgrep -x "$WAYBAR_CMD" >/dev/null; then
  # If running, kill Waybar
  pkill -x "$WAYBAR_CMD"
else
  # If not running, start Waybar
  $WAYBAR_CMD &
fi
