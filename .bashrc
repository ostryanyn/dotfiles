# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

[[ -f ~/.bash_prompt ]] && . ~/.bash_prompt
[[ -f ~/.bash_functions ]] && . ~/.bash_functions

# Env {{{

# Remember all history
HISTCONTROL=ignoreboth:erasedups
HISTFILESIZE=
HISTSIZE=
#HISTIGNORE='(^.by.*)'

# Path
PATH=~/bin:/opt/genymotion/tools:~/.config/composer/vendor/bin:$PATH

# Terminal emulator
export TERM=rxvt-256color

#}}}
# Alias {{{
#source /usr/bin/virtualenvwrapper.sh
alias ls='ls --color=auto'

alias vv='vim --servername ANDROMEDA'

alias h=evaluate_command_from_history
#}}}
