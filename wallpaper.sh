#!/bin/bash

while true; do
    swww img "$(find ~/Pictures/wallpapers -type f | shuf -n 1)"
    sleep 600
done

