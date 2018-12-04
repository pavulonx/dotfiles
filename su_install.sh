#!/bin/sh
#screen lock
cp -iv ./usr/bin/blurlock                           /usr/bin/blurlock
cp -iv ./usr/bin/i3exit                             /usr/bin/i3exit
cp -iv ./usr/local/bin/xflock4                      /usr/local/bin/xflock4

#lightdm
cp -iv etc/lightdm/lightdm.conf                     /etc/lightdm/lightdm.conf
cp -iv etc/lightdm/lightdm-webkit2-greeter.conf     /etc/lightdm/lightdm-webkit2-greeter.conf
convert -size 100x100 xc:black /usr/share/lightdm-webkit/themes/litarvan/images/background.jpg
