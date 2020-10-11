#
# ~/.bashrc
#

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip -c'

#source ~/.colors

#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;32m\]\u@\h \e[m: \[\e[36m\][ \[\e[m\]\w \[\e[36m\]]\n\[\e[0;31m\]\\$->\[\e[m\] '

#ANDROID_HOME='/run/media/Storage/Tools/SDKs/Android'
#PATH=$PATH:~/.local/bin:$HOME/.config/composer/vendor/bin
