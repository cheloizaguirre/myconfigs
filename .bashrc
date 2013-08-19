#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export PROMPT_COMMAND="echo -ne '\a'"
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

export P4CONFIG=p4config
export P4USER=mizaguir
export nibuild_perforce_clientspec=mizaguir-barchwolf-perforce
export nibuild_penguin_clientspec=mizaguir-barchwolf-penguin
export nibuild_perforce_p4Port=cluperforce01.emea.corp.natinst.com:1999
export nibuild_penguin_p4Port=cluperforce01.emea.corp.natinst.com:1888
