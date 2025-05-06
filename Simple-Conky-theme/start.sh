#!/bin/bash

killall conky
sleep 2s

# Launch main system monitor (top left)
conky -c $HOME/.config/conky/Simple-Conky-theme/Simple-Conky-theme.conf &> /dev/null &

# Launch Calender (top right)
conky -c $HOME/.config/conky/Simple-Conky-theme/gcalendar.conf &> /dev/null &

exit
