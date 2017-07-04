#!/bin/bash
if [ ! -d "~/.config/nvim/" ];then
    mkdir -p ~/.config/nvim/
fi

rm -rf ~/.config/nvim/init.vim
touch ~/.config/nvim/init.vim

# Open init.vim
cat init.vim >> ~/.config/nvim/init.vim

# Plugins
cat plugins/vim-plug.vim >> ~/.config/nvim/init.vim

# Config
cat config/*.vim >> ~/.config/nvim/init.vim

cat config/plugins/*.vim >> ~/.config/nvim/init.vim

nvim -c PlugInstall -c UpdateRemotePlugins -c qa!
