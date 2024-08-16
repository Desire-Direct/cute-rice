#!/bin/bash
#reload $ . ~/.bashrc
#
set -o vi # move around like in vim
stty -ixon #disable ctrl-s /ctrl-q: pause terminal /paste gibberish
shopt -s autocd #go to ~/directory, without cd
#HISTSIZE= HISTFILESIZE= #infinite command history

#customize bash prompt
export PS1="[\[\e[0;35m\]\u\[\e[0;0m\]@\[\e[0;36m\]\h\[\e[0m\] \w]\$ " #add color to user@host
alias ls='ls --color=auto' #add color to directories
alias grep='grep --color=auto' #add color to grep search

#ALIASES
#path
alias swap="cd ~/.cache/vim/swap"
alias blog="cd /srv/http/lb"
alias desire="cd /srv/http/desire-direct"
#git
alias ga='git add' # Add a file to Git.
alias gc='git commit -m' # Commit changes to the code.


