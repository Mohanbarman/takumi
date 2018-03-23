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

vim_install() {
    cd vim

    _dialog_wait "$VIM_WAIT"
    curl -fLo $VIM_DIR/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    # Install Plugins
    cat plugins/vim-plug.vim >> $VIM_RC

    # Install colorscheme
    vim -c PlugInstall -c qa

    # Check if color folder is present
    if [ ! -d "$VIM_DIR/colors/" ];then
        mkdir -p $VIM_DIR/colors
    fi

    # Load onedark colors
    if [ -d "$VIM_DIR/plugged/onehalf" ];then
        cp -r $VIM_DIR/plugged/onehalf/vim/colors/* ~/.vim/colors
    fi

    # Fix onehalf colorscheme
    bash scripts/colors.sh

    # Load config files
    cat config/main.vim >> $VIM_RC
    cat config/plugins/airline.vim >>  $VIM_RC
    cat config/colors.vim >> $VIM_RC

    vim -c PlugInstall -c qa

    cd ..
}
