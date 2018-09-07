#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval `dircolors`

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
#PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

alias l='ls -l'

HISTIGNORE="history*:sudo *:man *:su *"



