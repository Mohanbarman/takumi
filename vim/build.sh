#=============================================================================
# Copyright (c) 2017 deltaxflux
# Author: deltaxflux
# URL: github.com/deltaxflux
# License: GNU v.3
#"=============================================================================

#=======================================
# Copy files
#=======================================
if [ ! -d  ~/.vim/custom/ ];then
    mkdir ~/.vim/custom/
fi

if [ ! -f ~/.vim/custom/big.txt ];then
    cp -r misc/big.txt ~/.vim/custom/
fi

if [ ! -f ~/.vim/custom/small.txt ];then
    cp -r misc/small.txt ~/.vim/custom/
fi

#=======================================
# Erase config
#=======================================
rm -rf ~/.vimrc

#=======================================
# Load header on top
#=======================================
cat vimrc >>  ~/.vimrc

#=======================================
# Load plugins list
#=======================================
cat plugins/vim-plug.vim >> ~/.vimrc
vim -c PlugInstall -c qa!

#=======================================
# Load latest config
#=======================================
cat config/*.vim >> ~/.vimrc
cat config/plugins/*.vim >> ~/.vimrc

#=======================================
# Apply changes
#=======================================
vim -c PlugInstall -c qa!

cd ..
