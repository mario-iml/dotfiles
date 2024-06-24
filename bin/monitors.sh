#!/bin/sh

echo "Please select Display layout:"

options=("1: Ruben (laptop middle and 2 Screens around)\n" "q: quit")

select opt in "${options[@]}"
do
    case $REPLY in
        1)
            echo "Setting up Display Layout for Ruben Desk"
            hyprctl keyword monitor DP-7,1920x1080@60,0x0,1
            hyprctl keyword monitor eDP-1,1920x1200@60,1920x0,1
            hyprctl keyword monitor DP-8,1920x1080@60,3840x0,1
            exit 0
            ;;
        *) 
            echo "Quitting"
            exit 0
            ;;
    esac
done

