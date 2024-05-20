# User Configs
# Fzf through history
fh() {
    if [ -n "$FZF_TMUX" ]; then
        tmux capture-pane -p -S -1000 | awk '!x[$0]++' | fzf-tmux --no-sort --tac | xargs -r tmux send-keys -t "$FZF_TMUX"
    else
        fc -l -n -r 1 | fzf --no-sort --tac | sed 's/^[ \t]*//' | wl-copy
    fi
}

# Image preview using kitten
preview() {
    kitty +kitten icat --silent --stdin no --transfer-mode file --place "${w}x${h}@${x}x${y}" "$1" < /dev/null > /dev/tty
}

cdf() {
    local dir
    dir=$(find ${1:-.} -maxdepth 1 -type d ! -path . -exec basename {} \; 2>/dev/null | fzf +m) && cd "$dir"
}



