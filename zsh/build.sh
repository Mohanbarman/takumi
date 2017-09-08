#!/bin/bash

zsh install/install.zsh
cat header.zsh >> ~/.zprezto/init.zsh
cat config/aliases.zsh >> ~/.zprezto/init.zsh
cat config/enviroment >> ~/.zprezto/init.zsh

cd ..

# Reload session
zsh
