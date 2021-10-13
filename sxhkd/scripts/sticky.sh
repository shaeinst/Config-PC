#!/bin/bash


run='true'

declare -A stickies
while read -ra l; do
    [[ "${l[4]}" == sticky ]] &&
        case "${l[5]}" in
            off)
                [[ "${stickies[${l[3]}]}" ]] && {
                    bspc node "${l[3]}" -d "${stickies[${l[3]}]}"
                    unset stickies[${l[3]}]
                }
                ;;
            on)
                stickies[${l[3]}]="${l[2]}"
                ;;
        esac
done < <(bspc subscribe node_flag)
