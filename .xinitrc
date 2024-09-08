#!/bin/sh
#
#~/.xinitrc
#
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
#
xrdb -load ~/.Xresources

#~/.fehbg &
urxvt &
setxkbmap &
xbindkeys & 
firefox &

exec i3 # Start the i3 window manager 



