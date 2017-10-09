#!/bin/bash
cd ~/

if [ ! -d ~/takumi/ ];then
    git clone https://github.com/deltaxflux/takumi ~/takumi/
fi

cd ~/takumi

make

