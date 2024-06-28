#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Clipboard Manager. This script uses cliphist, rofi, and wl-copy.

# Actions:
# CTRL Del to delete an entry
# ALT Del to wipe clipboard contents

#!/bin/bash
#!/bin/bash

# Get clipboard history from cliphist
history=$(cliphist list)

# Display clipboard history using wofi
echo "$history" | wofi --dmenu --prompt="Clipboard History: "| wl-copy


