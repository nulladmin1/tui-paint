#!/usr/bin/env bash

clear

# Initialize variables
x=0
y=0
brush="█"

# Draw on screen
draw() {
    tput cup $y $x
    printf "$brush"
}
# Colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT_GRAY='\033[0;37m'
DARK_GRAY='\033[1;30m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;312m'
YELLOW='\033[1;33m'
LIGHT_BLUE='\033[1;34m'
LIGHT_PURPLE='\033[1;35m'
LIGHT_CYAN='\033[1;36m'
WHITE='\033[1;37m'

# Main loop
while true; do
    read -rsn1 key
    case "$key" in
        # WASD Input
        'w') y=$((y-1));;
        's') y=$((y+1));;
        'd') x=$((x+1));;
        'a') x=$((x-1));;

        # Quit
        'q') break;;

        # Clear
        'c') clear;;

        # Colors
        '1') brush="${RED}█";;
        '2') brush="${BLACK}█";;
        '3') brush="${GREEN}█";;
        '4') brush="${BROWN}█";;
        '5') brush="${BLUE}█";;
        '6') brush="${PURPLE}█";;
        '7') brush="${CYAN}█";;
        '8') brush="${LIGHT_GRAY}█";;
        '9') brush="${DARK_GRAY}█";;
        't') brush="${LIGHT_RED}█";;
        'y') brush="${LIGHT_GREEN}█";;
        'u') brush="${YELLOW}█";;
        'i') brush="${LIGHT_BLUE}█";;
        'o') brush="${LIGHT_PURPLE}█";;
        'p') brush="${LIGHT_CYAN}█";;
        '0') brush="${WHITE}█";;
    esac
    draw
done

clear
