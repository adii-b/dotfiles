if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting
set -g fish_autosuggestion_enabled 0
zoxide init fish | source
source ~/.config/fish/add-ons/alias.fish
source ~/.config/fish/add-ons/colorschemes.fish
source ~/.config/fish/add-ons/env.fish

starship init fish | source
