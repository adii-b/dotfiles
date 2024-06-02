# Function to add padding before displaying the prompt
add_padding() {
    printf "\n"  # Print a newline for padding
}

# Set PROMPT_COMMAND to call add_padding function before displaying the prompt
PROMPT_COMMAND="add_padding"


fh() {
	if [ -n "$TMUX" ]; then
		tmux capture-pane -p -S -1000 | awk '!x[$0]++' | fzf-tmux --no-sort --tac | xargs -r tmux send-keys -t "$TMUX"
	else
		cat ~/.bash_history | fzf --no-sort --tac | sed 's/^[ \t]*//' | wl-copy
	fi
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
