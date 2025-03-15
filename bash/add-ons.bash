PS1='${debian_chroot:+($debian_chroot)}\[\033[32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
eval "$(zoxide init bash)"
eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/atomic.omp.json)"
