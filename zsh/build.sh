#!/bin/bash

cat config/aliases.zsh >> ~/.zprezto/init.zsh
cat config/enviroment >> ~/.zprezto/init.zsh

# Reload session
zsh
