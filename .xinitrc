[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#setxkbmap -model pc105 -layout us,ru -option grp:alt_space_toggle
setxkbmap -model asus_laptop -layout us,ru -option grp:alt_space_toggle
#sh ~/.fehbg &

#xinput set-button-map 11 1 2 3 0 0
xinput set-button-map 14 1 2 3 0 0

#xset +fp ~/.fonts
#xset fp rehash

sed -i '/^\(?:\|h\|eh\|fh\|cd\|ls\|man\|rm\|mkdir\|ln\) .*/d' .bash_history
sed -i '/^[А-Яа-я].*/d' .bash_history
sort -u .bash_history -o .bash_history

autocutsel -fork &
autocutsel -selection PRIMARY -fork &

xbindkeys
xcompmgr -C &

exec awesome
