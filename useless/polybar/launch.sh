#!/usr/bin/bash
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar left &> /dev/null &
polybar center &> /dev/null &
polybar right &> /dev/null &

kill -9 $$
