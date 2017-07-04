#!/bin/bash

# Config
function config {
	sudo pip3 install neovim
}

# Prepare vim
function vim {
        # Install Vimplug
	mkdir -p $HOME/.vim
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}
# Prepare nvim
function nvim {
	mkdir -p $HOME/.config/nvim/
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

function main {
	vim
	nvim
}

main
