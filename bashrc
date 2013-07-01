[ -z "$PS1" ] && return

HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups
HISTCONTROL=ignoreboth

shopt -s histappend
shopt -s checkwinsize

PS1='\[\033[01;31m\]\h\[\033[01;34m\] \w #\[\033[00m\] '
PS1="\[\e]0;\u@\h: \w\a\]$PS1"

alias ls='ls --color=auto -B --group-directories-first --hide="NTUSER*" --hide="ntuser*" -rc'
cmd /c chcp 65001 > /dev/null 2>&1
cd ~
clear