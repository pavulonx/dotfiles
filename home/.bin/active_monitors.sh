#!/bin/sh

xrandr --listactivemonitors  |  tail -n +2  | rev | cut -d " " -f 1 | rev
