#!/usr/bin/env bash

# Colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT_GRAY='\033[0;37m'
DARK_GRAY='\033[1;30m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHT_BLUE='\033[1;34m'
LIGHT_PURPLE='\033[1;35m'
LIGHT_CYAN='\033[1;36m'
WHITE='\033[1;37m'

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
colors="${BLACK}Black\n${RED}Red\n${GREEN}Green\n${ORANGE}Orange\n${BLUE}Blue\n${PURPLE}Purple\n${CYAN}Cyan\n${LIGHT_GRAY}Light_Gray\n${DARK_GRAY}Dark_Gray\n${LIGHT_RED}Light_Red\n${LIGHT_GREEN}Light_Green\n${YELLOW}Yellow\n${LIGHT_BLUE}Light_BLue\n${LIGHT_PURPLE}Light_Purple\n${LIGHT_CYAN}Light_Cyan\n${WHITE}White"
binds="Movement:\n  Left: 'h'\n  Down:'j'\n  Up: 'k'\n  Right:'l'\nColors:\n  Red: '1'\n  Black: '2'\n  Green: '3'\n  Brown: '4'\n  Blue: '5'\n  Purple: '6'\n  Cyan: '7'\n  Light Gray: '8'\n  Dark Gray: '9'\n  Light Red: 't'\n  Light Green: 'y'\n  Yellow:'u'\n  Light Blue:'i'\n  Light Purple: 'o'\n  Light Cyan: 'p'\n  White: '0'"

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
        'h') y=$((y-1));;
        'j') y=$((y+1));;
        'k') x=$((x+1));;
        'l') x=$((x-1));;

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
