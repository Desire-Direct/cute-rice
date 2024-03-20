#!/bin/bash
#reload $ . ~/.bashrc
#
stty -ixon #disable ctrl-s /ctrl-q: pause terminal /paste gibberish
shopt -s autocd #go to ~/directory, without cd
#HISTSIZE= HISTFILESIZE= #infinite command history

#customize bash prompt
export PS1="[\[\e[0;35m\]\u\[\e[0m\]@\[\e[0;36m\]\h\[\e[0m\] \W]\$ " #add color to user@host
alias ls='ls --color=auto' #add color to directories
alias grep='grep --color=auto' #add color to grep search

#some aliases
alias blog="cd /srv/http/lb"
alias desire="cd /srv/http/desire-direct"

#take screenshot with ImageMagick (for whole window add -window option)
alias shoot="import root screenshot.jpg"

