#!/bin/bash

#=======================================
# Copy files
#=======================================
if [ ! -d ~/.config/nvim/custom/ ]; then
  mkdir ~/.config/nvim/custom/
fi

if [ ! -f ~/.config/nvim/custom/big.txt ]; then
  cp -r misc/big.txt ~/.config/nvim/custom/
fi

if [ ! -f ~/.config/nvim/custom/small.txt ]; then
  cp -r misc/small.txt ~/.config/nvim/custom/
fi

if [ ! -d "~/.config/nvim/" ]; then
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

