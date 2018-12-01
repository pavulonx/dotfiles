#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

if type "xrandr"; then
  for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload top &
  done
else
  polybar --reload top &
fi

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar top &

echo "Bars launched..."
