killall polybar 

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar i3wm -c ~/.config/i3/polybar/config.ini &
  done
else
  polybar i3wm -c ~/.config/i3/polybar/config.ini &
fi



