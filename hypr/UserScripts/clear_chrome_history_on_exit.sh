#!/bin/bash

# Path to Chrome's history file
HISTORY_FILE="$HOME/.config/google-chrome/Default/History"

# Check if the history file exists
if [ ! -f "$HISTORY_FILE" ]; then
    echo "Chrome history file not found at $HISTORY_FILE."
    exit 1
fi

# Monitor Chrome's process
echo "Monitoring Chrome process..."
while pgrep -x "chrome" > /dev/null; do
    sleep 60  # Check every 5 seconds if Chrome is running
done

# Chrome has exited; delete the history file
echo "Chrome has exited. Clearing history..."
rm -f "$HISTORY_FILE"

# Confirm deletion
if [ ! -f "$HISTORY_FILE" ]; then
    echo "History file successfully deleted."
else
    echo "Failed to delete the history file."
fi
