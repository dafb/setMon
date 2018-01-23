#!/bin/sh

# Simple script to switch between monitors using xrandr, when using docking station.
# mail@dannyfb.dk

echo "
USAGE: setMon.sh <1-3>

Select monitor mode:
1. work-mode (right of primary)
2. normal-mode
"
echo -n "What do you choose? "
read input

# validate input

if [[ ! $input || $input = *[^0-2]* ]]; then
    echo "Error: '$input' is not a number or not between 1-3." >&2
fi

if [[ ! $input || $input = 1 ]]; then 
    xrandr --output eDP1 --mode 1920x1080 --rotate normal --output DP2-2 --right-of eDP1 --auto --mode 3440x1440 --dpi 100

    #i3-msg workspace 1 && i3-msg move workspace to output DP2-2
    #i3-msg workspace 2 && i3-msg move workspace to output DP2-2
    #i3-msg workspace 3 && i3-msg move workspace to output DP2-2
    #i3-msg workspace 4 && i3-msg move workspace to output DP2-2
    #i3-msg workspace 5 && i3-msg move workspace to output DP2-2
    #i3-msg workspace 6 && i3-msg move workspace to output DP2-2
    #i3-msg workspace 7 && i3-msg move workspace to output DP2-2
    #i3-msg workspace 8 && i3-msg move workspace to output DP2-2
    #i3-msg workspace 9 && i3-msg move workspace to output DP2-2
    #i3-msg workspace 10 && i3-msg move workspace to output DP2-2

    elif [[ ! $input || $input = 2 ]]; then
    xrandr -s 0
fi
