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
