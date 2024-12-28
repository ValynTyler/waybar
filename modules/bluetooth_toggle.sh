bluetoothctl show | grep -q "Powered: yes"
if [ $? -eq 0 ]; then
  # on state
  echo "turning off..."
  bluetoothctl power off > /dev/null
else
  # off state
  echo "turning on..."
  bluetoothctl power on > /dev/null
fi
