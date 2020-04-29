#!/bin/sh

player_info() {
    playerctl metadata --format '{{artist}} - {{title}}' -p "$1" | sed 's/ / /g'
}

# todo: fetch all info here
player_status=$(playerctl metadata -af "{{status}}:{{playerName}}" | grep "Playing\|Paused" | sort -r | head -n 1)
active_player=$(playerctl metadata -af "{{status}}:{{playerName}}" | grep "Playing\|Paused" | sort -r | head -n 1 | cut -d ":" -f 2)

if $(echo "$player_status" | grep -q "Playing"); then
    echo "   $(player_info "$active_player")"
elif $(echo "$player_status" | grep -q  "Paused"); then
    echo "   $(player_info "$active_player")"
else
    echo ""
fi
