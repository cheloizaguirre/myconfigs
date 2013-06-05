#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias sdalek='ssh root@dalek'
if [ "$COLORTERM" == "gnome-terminal" ]; then
	export TERM=xterm-256color
fi
set -o vi
shopt -s cdspell

function lt() { ls -ltrsa "$@" | tail; }
function psgrep() { ps axuf | grep -v grep | grep "@" -i --color=auto; }
function fname() { find . -iname "*$@*" ; }
export visual=vim
export EDITOR=vim
