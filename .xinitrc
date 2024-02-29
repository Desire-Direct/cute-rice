#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

#CUSTOM .xinitrc merges .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#activating custom .Xmodmap
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# start some nice programs
xrdb -load ~/.Xresources
urxvt &

xbindkeys & #bind keys

# Start the i3 window manager 
exec i3


