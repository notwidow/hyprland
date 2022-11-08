#!/bin/bash

{
echo -e "Let's install the Hyprland Wayland. We can proceed? (y/N)?"
read answer
    if [[ $answer = [sSyY] ]]; then
        echo -e "\nInstalling...\n"

        yay -S swaybg swayidle swaylock wlroots wl-clipboard waybar-hyprland-git wofi foot mako grim slurp wlogout light yad obs-studio imagemagick nwg-look xorg-xwayland		
        yay hyprland
        yay wlrobs-hg  # To Obs-studio works
        sleep 3
        mkdir -p ~/.config/hypr
        cp -r ~/.config/hypr/* ~/.config/hypr/
    else
        sair
    fi
}

sair() {
    echo -e "\nDo it! Log out NOW...\n"
    exit 0
}
