#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi




#[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources


# start some nice programs
xrdb -load ~/.Xresources
urxvt &

# Activate X key bindings
xbindkeys

# Start the i3 window manager 
exec i3


