#!/usr/bin/env bash

cp -v ~/.config/dunst/dunstrc ./dunst/dunstrc
cp -v ~/.config/compton.conf ./compton/compton.conf

cp -v ~/.i3/config ./.i3/config
cp -v ~/.config/polybar/config ./polybar/config
cp -v ~/.config/polybar/launch.sh ./polybar/launch.sh
cp -v /etc/i3status.conf ./.i3/i3status.conf
cp -v ~/.config/i3-scrot.conf ./i3-scrot.conf

cp -v ~/.bin/* ./scripts

cp -v ~/.zshrc ./.zshrc
cp -v ~/.yaourtrc ./.yaourtrc

cp -v ~/.xinitrc ./.xinitrc
cp -v ~/.extend.xinitrc ./.extend.xinitrc
cp -v ~/.Xresources ./.Xresources
cp -v ~/.extend.Xresources ./.extend.Xresources

cp -v ~/.config/mimeapps.list ./mimeapps.list

# cp -v ~/.mpd/mpd.conf ./mpd/mpd.conf
# cp -v ~/.ncmpcpp/config ./ncmpcpp/config
# cp -v ~/.config/cava/config ./cava/config

echo "Done!"
