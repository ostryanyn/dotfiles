# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

[[ -f ~/.bash_env ]] && . ~/.bash_env
[[ -f ~/.bash_prompt ]] && . ~/.bash_prompt
[[ -f ~/.bash_functions ]] && . ~/.bash_functions
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

#
#source /usr/bin/virtualenvwrapper.sh
