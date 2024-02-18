#!/usr/bin/env bash

# Colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
COLOR_OFF='\033[0m'

# Initialize variables
x=0
y=0
brush="█"

# CLI Args
if [ $# -gt 1 ]; then
  echo "Usage: ./tui-paint.sh (Argument)"
  exit 1
fi

help_txt="Usage: ./tui-paint.sh (Argument)\n\nArguments:\n   help/--help/-h   Shows this message.\n   colors   Prints all the colors available\n   binds   Prints all the keybindings"
colors="${BLACK}Black\n${RED}Red\n${GREEN}Green\n${YELLOW}YELLOW\n${BLUE}Blue\n${PURPLE}Purple\n${CYAN}Cyan\n${WHITE}WHITE\n${COLOR_OFF}Color Off"
binds="Movement:\n  Left: 'h'\n  Down:'j'\n  Up: 'k'\n  Right:'l'\nColors:\n  Red: '1'\n  Black: '2'\n  Green: '3'\n  Yellow: '4'\n  Blue: '5'\n  Purple: '6'\n  Cyan: '7'\n  White: '8'\n  Color Off: '9"

case "$1" in
  "help" | "--help" | "-h")
    printf "$help_txt"
    exit 0
    ;;
  "colors" | "c")
    printf "$colors"
    exit 0
    ;;
  "binds" | "b")
    printf "$binds"
    exit 0
    ;;
esac

clear

# Draw on screen
draw() {
    tput cup $y $x
    printf "$brush"
}

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
        '9') brush="${WHITE}█";;
        '0') brush="${COLOR_OFF}";;
    esac
    draw
done

clear
