#!/bin/bash

###############################################################
### Dotfiles install script
### DialogUtils
###
### Copyright (C) 2018 Cyberfee
###
### By: cyberfee
### Email: dektax.fluxion@gmail.com
###
### Any questions, comments, or bug reports may be sent to above
### email address. Enjoy, and keep on using Arch.
###
### License: GPL v3.0
###############################################################

_dialog_menu() {
    dialog --title "$TAKUMI_TITLE" --checklist "Choose your config file(s)" 6 60 0 \
        1 "ZSH config" on\
        2 "VIM config" on \
        3 "NVIM config" on\
        4 "TMUX config" on 2>$TEMP_PATH
}

# Print wait value
_dialog_wait() {
    if [ "$1" != "" ];then
        { for i in $(seq 1 100) ; do
            echo $i
            sleep 0.001
        done

        echo 100; } | dialog --backtitle "$TAKUMI_TITLE" \
                         --gauge "$1" 6 60 0
    fi
}

_dialog_agree() {
    res=$(dialog --title "$TAKUMI_TITLE"  --yesno "$1" 6 60 2>/tmp/ans)
}

_dialog_title() {
    dialog --title "$TAKUMI_TITLE"  --msgbox "$1" 6 25
}




