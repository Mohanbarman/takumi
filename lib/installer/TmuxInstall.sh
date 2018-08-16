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

tmux_install ()
{
    DIR=$(dirname $(readlink -f $0))

    if [ -f $HOME/.tmux.conf ];then unlink $HOME/.tmux.conf; fi
    if [ -d $HOME/.tmux ];then unlink $HOME/.tmux; fi

    ln -s $DIR/tmux/tmux.conf $HOME/.tmux.conf
    ln -s $DIR/tmux $HOME/.tmux

	cd ..
}
