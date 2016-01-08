#!/usr/bin/env bash
# Specific to Lenovo G505s(Slackware 14.1)

# to get button mapping in detail, type:
# xinput list --long "ETPS/2 Elantech Touchpad"

# xinput set-button-map "ETPS/2 Elantech Touchpad" 1 0 3 0 0 0 0 0 0 0 0 0
xinput set-button-map "ETPS/2 Elantech Touchpad" 1 2 3 4 5 6 7 8 9 10 11 12

# For short(int) button values, type:
# xinput get-button-map "ETPS/2 Elantech Touchpad"

# To get device id, type:
# xinput list

# To get property list, type:
# xinput list-props 15

xinput set-prop "ETPS/2 Elantech Touchpad" "Synaptics Palm Detection" 1
xinput set-prop "ETPS/2 Elantech Touchpad" "Synaptics Palm Dimensions" 4 1

# Disable touch while typing
syndaemon -i 1.0 -K -R -d

# To view current parameter settings, type:
# synclient -l
