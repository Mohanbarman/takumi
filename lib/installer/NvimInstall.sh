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

nvim_install() {
    cd nvim

    if [ ! -d  $HOME/.config/nvim/custom/ ];then
        mkdir -p $HOME/.config/nvim/custom/
    fi

    if [ ! -f $HOME/.config/nvim/custom/big.txt ];then
        cp -r misc/big.txt $HOME/.config/nvim/custom/
    fi

    if [ ! -f $HOME/.config/nvim/custom/small.txt ];then
        cp -r misc/small.txt $HOME/.config/nvim/custom/
    fi

    if [ ! -d "$HOME/.config/nvim/" ];then
        mkdir -p $HOME/.config/nvim/
    fi

    touch $NVIM_RC

    cat init.vim >> $NVIM_RC

    cat plugins/vim-plug.vim >> $NVIM_RC

    _dialog_wait "$NVIM_PREPARE"

    nvim -c PlugInstall -c UpdateRemotePlugins -c qa!

    cat config/*.vim >> $NVIM_RC
    cat config/plugins/*.vim >> $NVIM_RC

    nvim -c PlugInstall -c UpdateRemotePlugins -c qa!

    cd ..

}
