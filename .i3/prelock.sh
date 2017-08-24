#!/bin/bash
notify-send 'Zzzzz...'
for i in {1..3}
do
for i in {1..6}
do
xbacklight -dec 5
sleep 200ms
done
for i in {1..6}
do
xbacklight -inc 5
sleep 200ms
done
done