#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export PATH=$PATH:$HOME/.local/bin
alias config='/usr/bin/git --git-dir=/home/tap/dotfiles/ --work-tree=/home/tap'
alias ls='ls --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias la='ls -la --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi
