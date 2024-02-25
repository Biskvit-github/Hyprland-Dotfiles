#!/usr/bin/env bash

op=$( echo -e " Poweroff\n Reboot\n Suspend\n Lock\n Logout" | wofi -i --dmenu | awk '{print tolower($2)}' )

case $op in 
        poweroff)
		doas poweroff
                ;;
        reboot)
                doas reboot
		;;
        suspend)
                
                ;;
        lock)
		swaylock
                ;;
        logout)
                doas hyprctl dispatch exit
                ;;
esac
