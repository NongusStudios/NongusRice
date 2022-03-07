picom &
nitrogen --restore &
redshift -P -O 5000 &
dunst &
dwmblocks &
xset r rate 300 50 &
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
exec dwm
