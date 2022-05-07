
setxkbmap pl

redshift-gtk -l 54.35:18.64 -t 4000:2000 &

xhost -

# wicd-gtk --tray &
volumeicon &
nm-applet &

xrdb -merge .Xresources

[ -d /mnt/wd/Dropbox ] && dropbox &

# this is for the previous standard horizontal setup
# xrandr --output DP-1-1 --mode 1680x1050 
# xrandr --output DP-1-2 --mode 1680x1050 --primary --right-of DP-1-1
# xrandr --output eDP-1 --off
# xrandr --output DP-2 --mode 1680x1050 --right-of DP-1-2

# this is for 3 monitors each one in portrait mode
#  | | |
xrandr --output DP-1-2 --rotate left
xrandr --output DP-1-1 --rotate right
xrandr --output DP-2 --rotate right
xrandr --output DP-1-1 --right-of DP-1-2
xrandr --output DP-2 --right-of DP-1-1

# this is for | - |
xrandr --output DP-2 --rotate normal
xrandr --output DP-1-1 --rotate right
xrandr --output DP-2 --right-of DP-1-2 --primary
xrandr --output DP-1-1 --right-of DP-2



# conky -u 5 -c ~/.config/conky/conky.conf -d --no-startup-id &
# conky -u 5 -c ~/.config/conky/conky2.conf -d --no-startup-id &
# conky -u 5 -c ~/.config/conky/conky3.conf -d --no-startup-id &

# exec awesome
exec i3
# exec mwm
