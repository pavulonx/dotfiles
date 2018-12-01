#!/bin/sh

cp -v 	~/.zshrc 	./home/
cp -v 	~/.xbindkeysrc 	./home/
cp -vr 	~/.bin 		./home/
cp -v 	~/.xinitrc 	./home/
cp -v 	~/.vimrc 	./home/
cp -v 	~/.rofi.sh 	./home/
cp -v 	~/.Xmodmap 	./home/	
cp -v 	~/.aliases.sh 	./home/
cat ~/.exports.sh | cut -d= -f1 > ./home/.exports.sh


cp -v ~/.config/dunst/dunstrc ./dunst/dunstrc
cp -v ~/.config/compton.conf ./compton/compton.conf
cp -v ~/.config/i3-scrot.conf ./i3-scrot.conf
cp -v ~/.config/mimeapps.list ./mimeapps.list
cp -v ~/.config/termite/config ./termite/config
cp -vr ~/.config/polybar ./home/.config/

cp -v ~/.Xresources ./.Xresources
cp -v ~/.extend.Xresources ./.extend.Xresources

cp -v ~/.i3/config ./.i3/config

cp -v /usr/bin/i3exit          ./usr/bin/i3exit
cp -v /usr/local/bin/xflock4 ./usr/local/bin/xflock4
cp -v /usr/bin/blurlock ./usr/bin/blurlock

echo "Done!"
