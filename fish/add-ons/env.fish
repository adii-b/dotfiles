set -x MICRO_TRUECOLOR 1
set -x EDITOR nvim
set -x PATH $PATH /home/aditya/.dotnet/tools /home/aditya/.local/bin
set -x WARP_THEMES_DIR (echo $XDG_DATA_HOME)"/warp-terminal/themes"
set -x GTK_THEME (gsettings get org.gnome.desktop.interface gtk-theme)
set -x XDG_CONFIG_HOME "$HOME/.config/"
