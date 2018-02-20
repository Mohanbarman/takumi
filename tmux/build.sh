#!/bin/bash

# Variable
RUN=$(ps -a | grep "tmux")
# Clear config
rm -rf ~/.tmux.conf
touch ~/.tmux.conf

# Load init config
cat .tmux.conf >> ~/.tmux.conf

# Load plugins
cat plugins/tpm.conf >> ~/.tmux.conf

# Load config
cat config/mappings.conf >> ~/.tmux.conf

# Design config
cat colors/config >> ~/.tmux.conf

if [ "$RUN" == "" ];then
    tmux
else
    exit && tmux
fi
tmux source-file ~/.tmux.conf
