#!/bin/bash
#reload $ . ~/.bashrc
#
stty -ixon #disable ctrl-s /ctrl-q: pause terminal /paste gibberish
shopt -s autocd #go to ~/directory, without cd
alias ls='ls --color=auto' #add color to directories

alias blog="cd /srv/http/lb"
alias desire="cd /srv/http/desire-direct"

#take screenshot with ImageMagick (for whole window add -window option)
alias knips="import root screenshot.jpg"


