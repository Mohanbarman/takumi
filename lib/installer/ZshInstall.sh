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

zsh_install() {
    rm -rf $ZSH_RC $ZSH_DIR $ZSH_DIR
    cd zsh

    _dialog_wait "$ZSH_NOTICE"

    zsh install/install.zsh

    cat header.zsh >> ~/.zim/init.zsh
    cat config/aliases.zsh >> ~/.zim/init.zsh
    cat config/enviroment >> ~/.zim/init.zsh
    cd ..
}

