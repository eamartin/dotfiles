
# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
alias ping='ping -c 3'
alias py='python2 -B'
alias yap='yaourt'
alias emacs="emacs -nw"

PS1='[\u@\h \W]\$ '
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
