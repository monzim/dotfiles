#
# ~/.bashrc
#
export PATH="$PATH:/var/lib/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
#export PATH="$PATH:/var/lib/android-studio/bin"
export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
