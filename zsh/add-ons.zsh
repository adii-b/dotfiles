# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

eval "$(zoxide init zsh)"
# eval "$(oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/emodipt-extend.omp.json)"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
