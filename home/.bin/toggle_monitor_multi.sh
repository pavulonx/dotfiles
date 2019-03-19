#!/bin/bash
intern=eDP1
extern_l=DP1-1
extern_r=DP1-2
extern_home=DP1

if xrandr | grep "^$extern_home connected"; then
    xrandr --output "$intern" --off --output "$extern_home" --auto
    xrandr --output "$extern_home" --auto --primary
else
    if xrandr | grep "^$extern disconnected"; then
        xrandr --output "$extern_r" --off --output "$extern_l" --off --output "$intern" --auto
    else
        xrandr --output "$extern_l" --auto
        xrandr --output "$extern_r" --auto
        xrandr --output "$intern" --auto
        xrandr --output "$intern" --primary
        xrandr --output "$extern_r" --left-of "$intern"
        xrandr --output "$extern_l" --left-of "$extern_r"
    fi
fi

