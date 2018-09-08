os.execute("xinput --map-to-output  $( xinput list --id-only 'Wacom HID 50DB Finger')  eDP-1")
os.execute("xinput set-prop 'SYNA2B2C:01 06CB:7F27 Touchpad'  $( xinput list-props 'SYNA2B2C:01 06CB:7F27 Touchpad' | grep -i 'tapping enabled (' | sed -e 's/.*(\\(.*\\)).*/\\1/') 1")
