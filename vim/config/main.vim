"=============================================================================
" SETTINGS
"=============================================================================

if has ('vim_starting')
	set nocompatible
endif

"=======================================
"Wrap line at the end
"=======================================
set wrap

"=======================================
" Show numbers
"=======================================
set number

"=======================================
" Syntax highlighting
"=======================================
syntax on

"=======================================
" Ident
"=======================================
set smartindent
set autoindent
set copyindent
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set smarttab
set expandtab

"=======================================
" Search config
"=======================================
set smartcase
set hlsearch
set incsearch

"=======================================
" Mouse config
"=======================================

if has('gui_runnign')
	set mouse=a
else
	set mouse=
endif

"=======================================
" Encoding
"=======================================
set termencoding=utf-8
set encoding=utf8

"=======================================
" Filetypes
"=======================================
filetype on
filetype plugin on
filetype indent on

"=======================================
"Buffer ~ past lines at the begin.
"=======================================

autocmd BufNewFile *.cpp,*.cc,*.c,*.hpp,*.h,*.sh,*.py exec ":call SetTitle()"
func SetTitle()
	if expand("%:e") == 'sh'
		call setline(1,"\#!/bin/bash")
		call append(line("."), "")
    elseif expand("%:e") == 'py'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
	    call append(line(".")+1, "")
    elseif expand("%:e") == 'cpp'
		call setline(1,"#include <iostream>")
		call append(line("."), "")
    elseif expand("%:e") == 'cc'
		call setline(1,"#include <iostream>")
		call append(line("."), "")
    elseif expand("%:e") == 'c'
		call setline(1,"#include <stdio.h>")
		call append(line("."), "")
    elseif expand("%:e") == 'h'
		call setline(1, "#pragma once")
    elseif expand("%:e") == 'hpp'
		call setline(1, "#pragma once")
	endif
endfunc
autocmd BufNewFile * normal G

"=======================================
" Spell check
"=======================================
