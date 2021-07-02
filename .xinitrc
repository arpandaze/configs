# .xinitrc

#xrandr --output LVDS1 --mode 1366x768 --pos 0x0 --rotate normal --output DP1 --off --output HDMI1 --off --output VGA1 --primary --mode 1360x768 --pos 1366x0 --rotate normal --output VIRTUAL1 --off

xrandr --output LVDS1 --mode 1366x768 --pos 1360x0 --rotate normal --output DP1 --off --output HDMI1 --off --output VGA1 --primary --mode 1360x768 --pos 0x0 --rotate normal --output VIRTUAL1 --off
setxkbmap us &
setxkbmap -option caps:escape
setxkbmap -option home:caps


xrdb $HOME/.Xresources
xsetroot -cursor_name left_ptr
xsetroot -solid '#80a0af'

# if we have private ssh key(s), start ssh-agent and add the key(s)
id1=$HOME/.ssh/identity
id2=$HOME/.ssh/id_dsa
id3=$HOME/.ssh/id_rsa
if [ -x /usr/bin/ssh-agent ] && [ -f $id1 -o -f $id2 -o -f $id3 ];
then
	eval `ssh-agent -s`
	ssh-add < /dev/null
fi

xset fp+ /usr/local/lib/X11/fonts/terminus
xset fp+ /usr/local/lib/X11/fonts/ghostscript
xset fp+ /usr/X11R6/lib/X11/fonts/TTF/

# xset fp rehash
#xset b 100 0 0
#xset r rate 140 200

xmodmap -e "keycode 233 = Page_Down"
xmodmap -e "keycode 234 = Page_Up"
xmodmap -e "remove Lock = Caps_Lock"
xmodmap -e "keysym Caps_Lock = Control_L"
xmodmap -e "add Control = Control_L"
setxkbmap -option caps:escape

# launch the external 60 second clock, and launch the workspace status bar
FG='#a8a3f7'
BG='#3f3c6d'

xmonad &

# wait for xmonad
wait $!
pkill -HUP dzen2
wait
