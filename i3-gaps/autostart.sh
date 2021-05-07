#!/bin/sh -e

xset s off &
xset -dpms &
xset s off -dpms &

#xsetroot -solid "#222222" &

#setxkbmap -option "grp:ctrl_shift_toggle,grp_led:scroll" -layout "us,ru" &
#xsetroot -cursor_name left_ptr &
picom --vsync --detect-transient &

feh --randomize --bg-scale ~/.wallpapers/* &
