#!/bin/sh
find ~/.wallpapers -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
	shuf -n1 -z | xargs -0 feh --bg-scale

notify-send -i 'terminal' \
            -a 'Terminal' \
            'Wallpaper has been changed'

