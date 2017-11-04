#!/bin/bash

wlan=$(/sbin/ifconfig wlan0 | grep inet\ addr | wc -l)
if [ $wlan -eq 0 ]; then
  nmcli nm wifi on
else
  echo "wifi is up."
fi
