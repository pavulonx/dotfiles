#!/bin/sh

cp -v 	~/.zshrc 			        ./home/
cp -v 	~/.powerline.conf.zsh	    ./home/
cp -v 	~/.xbindkeysrc 			    ./home/
cp -v 	~/.Xresources 			    ./home/
cp -v 	~/.xinitrc 			        ./home/
cp -v 	~/.vimrc 			        ./home/
cp -v 	~/.rofi.sh 			        ./home/
cp -v 	~/.aliases.sh 			    ./home/
cat ~/.exports.sh | cut -d= -f1 > 	./home/.exports.sh
cp -vr 	~/.bin 				        ./home/
cp -vr 	~/.i3 				        ./home/

cp -v 	~/.config/compton.conf 		./home/.config/
cp -v 	~/.config/mimeapps.list 	./home/.config/
cp -v 	~/.config/i3-scrot.conf 	./home/.config/
cp -vr 	~/.config/polybar 		    ./home/.config/
cp -vr 	~/.config/rofi              ./home/.config/
cp -vr 	~/.config/dunst 		    ./home/.config/
cp -vr 	~/.config/termite 		    ./home/.config/


cp -v /usr/bin/i3exit               ./usr/bin/i3exit
cp -v /usr/local/bin/xflock4        ./usr/local/bin/xflock4
cp -v /usr/bin/blurlock             ./usr/bin/blurlock

echo "Done!"
