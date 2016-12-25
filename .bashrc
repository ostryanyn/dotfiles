# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# bash history
alias h='cat -n ~/.bash_history | grep'

# vim
alias vv='vim --servername ANDROMEDA'

# remove unnecessary lines from history
filter_history() {
    if [ -z $1 ]; then
        return
    fi
    sed -i "${1//,/d;}d" ~/.bash_history
}
alias fh=filter_history

# execute line from history
eval_history() {
    if [ -z $1 ]; then
        return
    fi
    eval $(sed -n "${1}p" ~/.bash_history)
}
alias eh=eval_history

report() {
if [ $? -eq 0 ]; then
    ( aplay .sound/success.wav >/dev/null 2>&1& )
else
    ( aplay .sound/failure.wav >/dev/null 2>&1& )
fi
}
alias re=report

bg_black="\[$(tput setab 0)\]"
bg_red="\[$(tput setab 1)\]"
bg_green="\[$(tput setab 2)\]"
bg_yellow="\[$(tput setab 3)\]"
bg_blue="\[$(tput setab 4)\]"
bg_purple="\[$(tput setab 5)\]"
bg_cyan="\[$(tput setab 6)\]"
bg_white="\[$(tput setab 7)\]"
bg_grey="\[$(tput setab 8)\]"

fg_black="\[$(tput setaf 0)\]"
fg_red="\[$(tput setaf 1)\]"
fg_green="\[$(tput setaf 2)\]"
fg_yellow="\[$(tput setaf 3)\]"
fg_blue="\[$(tput setaf 4)\]"
fg_purple="\[$(tput setaf 5)\]"
fg_cyan="\[$(tput setaf 6)\]"
fg_white="\[$(tput setaf 7)\]"
fg_grey="\[$(tput setaf 8)\]"

bold="\[$(tput bold)\]"
underline="\[$(tput smul)\]"
reset="\[$(tput sgr0)\]"

if [ $TERM == "linux" ]; then
    PS1="${fg_red} \A ${fg_green} \W ${fg_blue} \\$ ${reset} "
else
    PS1="${underline}${bold}${fg_red} \A ${fg_green} \W ${fg_blue} \\$ ${reset} "
    #PS1="${bold}${bg_red} \A ${bg_green} \W ${bg_blue} \\$ ${reset}${bold} "
fi
trap 'tput sgr0' DEBUG

PS2="\[\e[0;43m\] \[\e[0;33m\]\[\e[0;0m\] "

HISTCONTROL=ignoreboth:erasedups
HISTFILESIZE=
HISTSIZE=
#HISTIGNORE='(^.by.*)'

PATH=$PATH:~/.bin

source /usr/bin/virtualenvwrapper.sh
