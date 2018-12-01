#!/bin/sh

cp -v ~/.xbindkeysrc .home/


cp -v ~/.config/dunst/dunstrc ./dunst/dunstrc
cp -v ~/.config/compton.conf ./compton/compton.conf
cp -v ~/.config/i3-scrot.conf ./i3-scrot.conf
cp -v ~/.config/mimeapps.list ./mimeapps.list
cp -v ~/.config/termite/config ./termite/config
cp -vr ~/.config/polybar ./home/.config/

cp -v ~/.i3/config ./.i3/config

cp -v ~/.bin/* ./scripts
cp -v ~/.zshrc ./.zshrc

cp -v ~/.xinitrc ./.xinitrc
cp -v ~/.extend.xinitrc ./.extend.xinitrc
cp -v ~/.Xresources ./.Xresources
cp -v ~/.extend.Xresources ./.extend.Xresources

cp -v ~/.Xmodmap ./.Xmodmap
cp -v ~/.rofi.sh ./home/.rofi.sh

cp -v ~/.aliases.sh ./.aliases.sh
cat ~/.exports.sh | cut -d= -f1 > .exports.sh

cp -vr ~/.bin .
cp -v ~/.vimrc ./.vimrc

cp -v /usr/bin/i3exit          ./usr/bin/i3exit
cp -v /usr/local/bin/xflock4 ./usr/local/bin/xflock4
cp -v /usr/bin/blurlock ./usr/bin/blurlock

echo "Done!"
