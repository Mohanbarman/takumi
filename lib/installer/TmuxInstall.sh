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

RUN=$(ps -a | grep "tmux")

# Load init config
cat .tmux.conf >> $TMUX_RC

# Load plugins
cat plugins/tpm.conf >> $TMUX_RC

# Load config
cat config/mappings.conf >> $TMUX_RC

# Design config
cat colors/config >> $TMUX_RC

if [ "$RUN" == "" ];then
    tmux
else
    exit && tmux
fi
tmux source-file $TMUX_RC


