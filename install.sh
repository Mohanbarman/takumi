#!/bin/bash

###############################################################
### Dotfiles install script
###
### Copyright (C) 2018 Cyberfee
###
### By: cyberfee
###
### Any questions, comments, or bug reports may be sent to above
### email address. Enjoy, and keep on using Arch.
###
### License: GPL v3.0
###############################################################

# Include
# =======================================
source lang/en.sh
source conf/Config.sh
source lib/InitUtils.sh
source lib/DialogUtils.sh
source lib/PrintUtils.sh

source lib/installer/ZshInstall.sh
source lib/installer/VimInstall.sh
source lib/installer/TmuxInstall.sh
source lib/installer/NvimInstall.sh

# =======================================

Init() {
    _dialog_title "$TAKUMI_HELLO"
    _dialog_agree "$TAKUMI_AGREE"

    _dialog_wait "$TAKUMI_BACKUP"
    _init_files

}

Gui() {
    _dialog_menu
    IN=$(cat $TEMP_PATH | head -n 1)

    for i in $(seq 1 $(echo $IN | wc -w));do
        case $(echo $IN | cut -d" " -f${i}) in
            1) zsh_install;;
            2) vim_install;;
            3) nvim_install;;
            4) tmux_install;;
            *) _print_error "$TAKUMI_OPTION";;
        esac

    done
}

main() {
    Init
    Gui
}

main
