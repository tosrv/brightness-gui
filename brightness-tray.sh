#!/bin/bash

# Run tray icon with YAD
yad --notification \
    --image=display-brightness \
    --text="Brightness" \
    --command="brg.sh"
