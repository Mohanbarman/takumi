#!/bin/bash

zsh install/install.zsh
cat header.zsh >> ~/.zim/init.zsh
cat config/aliases.zsh >> ~/.zim/init.zsh
cat config/enviroment >> ~/.zim/init.zsh

cd ..

# Reload session
