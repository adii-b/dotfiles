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

ex ()
{
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1   ;;
        *.tar.gz)    tar xzf $1   ;;
        *.bz2)       bunzip2 $1   ;;
        *.rar)       unrar x $1   ;;
        *.gz)        gunzip $1    ;;
        *.tar)       tar xf $1    ;;
        *.tbz2)      tar xjf $1   ;;
        *.tgz)       tar xzf $1   ;;
        *.zip)       unzip $1     ;;
        *.Z)         uncompress $1;;
        *.7z)        7za e x $1   ;;
        *.deb)       ar x $1      ;;
        *.tar.xz)    tar xf $1    ;;
        *.tar.zst)   unzstd $1    ;;
        *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

