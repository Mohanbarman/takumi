#!/bin/bash

# ########################################
# Maintainer: deltax
# Last modifyed: 2017-10-20 12:14
# Name: Install
# ########################################

if [ ! -d ~/takumi/ ]; then
  git clone https://github.com/deltaxflux/takumi ~/takumi/
fi

cd ~/takumi

make
