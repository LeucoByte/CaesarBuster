#!/bin/bash

DARK_BLUE="\033[0;34m"
LIGHT_BLUE="\033[1;34m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
RED="\033[0;31m"
RESET="\033[0m"

echo -e "${RED}  _____                           ____        _       _${RESET}"
echo -e "${RED} / ____|                         |  _ \      | |     | |${RESET}"
echo -e "${RED}| |     __ _  ___  ___  __ _ _ __| |_) |_   _| |_ ___| |__   ___ _ __${RESET}"
echo -e "${RED}| |    / _\` |/ _ \/ __|/ _\` | '__|  _ <| | | | __/ __| '_ \ / _ \ '__|${RESET}"
echo -e "${RED}| |___| (_| |  __/\__ \ (_| | |  | |_) | |_| | || (__| | | |  __/ |${RESET}"
echo -e "${RED} \_____\__,_|\___||___/\__,_|_|  |____/ \__,_|\__\___|_| |_|\___|_|${RESET}"
echo
echo -e "[@] Author: https://github.com/LeucoByte"
echo

echo -ne "${YELLOW}[?] Text to decrypt: ${RESET}"
read query

number=1; COLOR=$DARK_BLUE

for shift in {b..z}; do
    echo -ne "${COLOR}[+] Shift $number:${RESET}\t"

    if [[ "$shift" == "b" ]]; then
        shift_lower="$shift"-za
        shift_upper=$(echo "$shift_lower" | tr 'a-z' 'A-Z')
    else
        rest=$(printf "\\$(printf '%03o' $(( $(printf "%d" "'z") - 1 )) )")
        shift_lower="$shift"-za-"$rest"
        shift_upper=$(echo "$shift_lower" | tr 'a-z' 'A-Z')
    fi


    echo -ne "$query" | tr 'a-z' "$shift_lower" | tr 'A-Z' "$shift_upper"
    echo
    
    if [[ $(( $number % 2 )) == 0 ]]; then
        COLOR=$DARK_BLUE
    else
        COLOR=$LIGHT_BLUE
    fi

    number=$(( number + 1 ))
done

