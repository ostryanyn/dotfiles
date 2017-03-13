# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

[[ -f ~/.bashrcenv ]] && . ~/.bashrcenv
[[ -f ~/.bashrcprompt ]] && . ~/.bashrcprompt
[[ -f ~/.bashrcfunctions ]] && . ~/.bashrcfunctions
[[ -f ~/.bashrcaliases ]] && . ~/.bashrcaliases

#
#source /usr/bin/virtualenvwrapper.sh
