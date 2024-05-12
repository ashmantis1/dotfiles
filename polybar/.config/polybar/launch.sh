PRIMARY=$(xrandr | grep primary | grep " connected" | cut -d" " -f1)
killall polybar>/dev/null&
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ "$m" == "$PRIMARY" ]
    then 
      MONITOR=$m polybar --reload primary &
    else 
      MONITOR=$m polybar --reload top &
    fi
  done
else
  polybar --reload example &
fi
