#!/bin/sh

cp -v ~/.config/dunst/dunstrc ./dunst/dunstrc
cp -v ~/.config/compton.conf ./compton/compton.conf

cp -v ~/.i3/config ./.i3/config
cp -v ~/.config/polybar/config ./polybar/config
cp -v ~/.config/polybar/launch.sh ./polybar/launch.sh
cp -v /etc/i3status.conf ./.i3/i3status.conf
cp -v ~/.config/i3-scrot.conf ./i3-scrot.conf
cp -v /usr/bin/blurlock ./blurlock

cp -v /etc/X11/xorg.conf.d/10-monitor.conf ./10-monitor.conf

cp -v ~/.bin/* ./scripts

cp -v ~/.zshrc ./.zshrc
cp -v ~/.yaourtrc ./.yaourtrc

cp -v ~/.xinitrc ./.xinitrc
cp -v ~/.extend.xinitrc ./.extend.xinitrc
cp -v ~/.Xresources ./.Xresources
cp -v ~/.extend.Xresources ./.extend.Xresources

cp -v ~/.config/mimeapps.list ./mimeapps.list
cp -v ~/.Xmodmap ./.Xmodmap

cp -v ~/.rofi.sh ./.rofi.sh
cp -v /home/rozen/.bin/toggle_monitor.sh ./.bin/toggle_monitor.sh

cp -v ~/.config/termite/config ./termite/config

cp -v ~/.aliases.sh ./.aliases.sh
cat ~/.exports.sh | cut -d= -f1 > .exports.sh

cp -v /usr/bin/i3exit i3exit

cp -vr ~/.bin .

cp -v ~/.vimrc ./.vimrc

cp -v /usr/bin/i3exit ./i3exit

# cp -v ~/.exports.sh ./exports.sh

# cp -v ~/.mpd/mpd.conf ./mpd/mpd.conf
# cp -v ~/.ncmpcpp/config ./ncmpcpp/config
# cp -v ~/.config/cava/config ./cava/config

echo "Done!"
