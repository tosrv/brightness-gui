#!/bin/bash

# Brightness Data
CURRENT=$(ddcutil getvcp 10 | awk -F'current value = ' '{print $2}' | awk -F',' '{print $1}')
[ -z "$CURRENT" ] && CURRENT=50

# Menu
BR=$(zenity --scale \
  --text="Set Monitor Brightness" \
  --min-value=0 --max-value=100 --value="$CURRENT" \
  --title="Brightness Control")

# Choice
if [ -n "$BR" ]; then
  ddcutil setvcp 10 "$BR"
  zenity --notification --text="Brightness set to $BR%"
fi
