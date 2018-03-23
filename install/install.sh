#!/bin/bash

# ########################################
# Maintainer: deltax
# Last modifyed: 2017-10-20 12:14
# Name: Install
# ########################################

if [ ! -d $HOME/takumi/ ];then
    git clone https://github.com/deltaxflux/takumi $HOME/takumi/
fi

cd $HOME/takumi

make

