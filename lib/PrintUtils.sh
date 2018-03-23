#!/bin/bash

###############################################################
### Dotfiles install script
###
### Copyright (C) 2018 Cyberfee
###
### By: cyberfee
###
### Any questions, comments, or bug reports may be sent to above
### email address. Enjoy, and keep on using Arch.
###
### License: GPL v3.0
###############################################################

_print_string() {
    if [ "$1" != "" ];then
        echo -e "[\033[32m+\033[0m] $1" | tee -a $TMP_PATH
    fi
}

_print_error() {
    if [ "$1" != "" ];then
        echo -e "[\033[31m!\033[0m] \033[31m$1 \033[0m" | tee -a $TMP_PATH
    fi
}

_print_information() {
    if [ "$1" != "" ];then
        echo -e "[\033[31mI\033[0m] $1" | tee -a $TMP_PATH
    fi
}


