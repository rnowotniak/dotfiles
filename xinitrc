
setxkbmap pl

redshift-gtk -l 54.35:18.64 &

xhost -

wicd-gtk --tray &

xrdb -merge .Xresources

[ -d /mnt/wd/Dropbox ] && dropbox &

xrandr --output DP-1-1 --mode 1680x1050 
xrandr --output DP-1-2 --mode 1680x1050 --primary --right-of DP-1-1
xrandr --output eDP-1 --off
xrandr --output DP-2 --mode 1680x1050 --right-of DP-1-2


# conky -u 5 -c ~/.config/conky/conky.conf -d --no-startup-id &
# conky -u 5 -c ~/.config/conky/conky2.conf -d --no-startup-id &
# conky -u 5 -c ~/.config/conky/conky3.conf -d --no-startup-id &

# exec awesome
exec i3
# exec mwm
