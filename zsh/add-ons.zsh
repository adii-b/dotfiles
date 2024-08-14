# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(zoxide init zsh)"
# eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/atomic.omp.json)"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
