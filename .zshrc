# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tap/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias config='/usr/bin/git --git-dir=/home/tap/dotfiles/ --work-tree=/home/tap'
alias ls='ls --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias la='ls -la --color=auto'
alias grep='grep --color=auto'

f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

eval "$(starship init zsh)"
