fan=`cat /sys/devices/platform/asus-nb-wmi/fan_boost_mode`
fan=$((fan+1))

if [ $fan == 3 ]
then
fan=0
fi

echo $fan | sudo /usr/bin/tee /sys/devices/platform/asus-nb-wmi/fan_boost_mode

if [ $fan == 0 ]
then
notify-send "Fans set to Normal mode"
fi

if [ $fan == 1 ]
then
notify-send "Fans set to Overboost mode"
fi

if [ $fan == 2 ]
then
notify-send "Fans set to Silent mode"
fi

