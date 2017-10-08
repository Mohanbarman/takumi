# Vim config
```
"=============================================================================
" Copyright (c) 2017 deltaxflux
" Author: deltaxflux
" URL: github.com/deltaxflux
" License: GLP v.3
"=============================================================================
"=============================================================================
" Plugins
"=============================================================================
call plug#begin()

"==================================================================="
" Color
"==================================================================="
Plug 'sonph/onehalf'

"==================================================================="
" General
"==================================================================="
Plug 'scrooloose/nerdtree'
Plug 'sjl/gundo.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'mhinz/vim-startify'
Plug 'docunext/closetag.vim'
Plug 'mhinz/vim-signify'
Plug 'davidhalter/jedi-vim'
Plug 'shougo/unite.vim'
Plug 'chiel92/vim-autoformat'
Plug 'tpope/vim-endwise'
Plug 'majutsushi/tagbar'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'shougo/vimshell.vim'
Plug 'tmux-plugins/vim-tmux'

"==================================================================="
" Reference
"==================================================================="
Plug 'thinca/vim-ref'
Plug 'exvim/ex-cref'
Plug 'fs111/pydoc.vim'

"==================================================================="
" Window
"==================================================================="
Plug 'scrooloose/nerdtree'
Plug 'justincampbell/vim-eighties'

"==================================================================="
" Airline
"==================================================================="
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"==================================================================="
" Clang
"==================================================================="
Plug 'rip-rip/clang_complete'
Plug 'rhysd/vim-clang-format'
Plug 'ervandew/supertab'

"==================================================================="
" Snips
"==================================================================="
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'shougo/neosnippet-snippets'

"==================================================================="
" Autocomplete
"==================================================================="
Plug 'sirver/ultisnips'
Plug 'shougo/neocomplete.vim'
Plug 'shougo/neosnippet'
Plug 'rhysd/github-complete.vim'


"==================================================================="
"Language check
"==================================================================="
Plug 'sirver/ultisnips'
Plug 'scrooloose/syntastic'

"==================================================================="
" Movement
"==================================================================="
Plug 'sirver/ultisnips'
Plug 'tpope/vim-surround'

"==================================================================="
" Github
"==================================================================="
Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
Plug 'junegunn/vim-github-dashboard'

"==================================================================="
" HTML
"==================================================================="
Plug 'plasticboy/vim-markdown'
Plug 'mattn/emmet-vim'

"==================================================================="
" Go
"==================================================================="
"==================================================================="
" Spell
"==================================================================="
Plug 'vim-scripts/LanguageTool'
Plug 'reedes/vim-wordy'
Plug 'reedes/vim-lexical'
Plug 'rhysd/vim-grammarous'

"==================================================================="
" Language bad behavious
"==================================================================="
call plug#end()

"=============================================================================
" Colors
"=============================================================================

let date = strftime("$H")
if date > 7 && date < 19
    colorscheme onehalflight
else
    colorscheme onehalfdark
endif

hi Normal guibg=NONE ctermbg=NONE
"=============================================================================
" Custom functions
"=============================================================================

function! InsertSmall ()
    r~/.vim/custom/small.txt
endfunction

function! InsertBig()
    r~/.vim/custom/big.txt
endfunction
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
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
set spell
"=============================================================================
" Mappings and movement
"=============================================================================
noremap <F3> :Autoformat<CR>

nmap <silent> <unique> <leader> F4 <Plug>CRV_CRefVimNormal
"=============================================================================
" Airline Config
"=============================================================================

"=======================================
" Enable airline ~ required
"=======================================
set laststatus=2

"=======================================
" Design
"=======================================
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"=======================================
" Extra config settings
"=======================================
let g:airline_detect_paste=1
let g:airline_detect_spell=1
let g:airline_detect_detect_modified=1

"=======================================
" Load unicode characters
"=======================================
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"=============================================================================
" Autoformat config
"=============================================================================
let g:autoformat_autoindent = 0
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 1

"=============================================================================
" Boostap snippet config
"=============================================================================
set dictionary+=~/.vim/bundle/bootstrap-snippets/dictionary
set complete+=k

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"=============================================================================
" Clang autocomplete
"=============================================================================
let g:clang_use_library = 1
let g:clang_complete_auto = 1
let g:clang_complete_copen = 1
let g:clang_periodic_quickfix = 0
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'
let g:clang_conceal_snippets = 1

"=============================================================================
" Completor plugin
"=============================================================================
let g:completor_python_binary = '/usr/lib/libLLVM-4.0.so/lib'
let g:completor_clang_binary ='/usr/lib64/libclang.so'
let g:completor_auto_trigger = 1
"=============================================================================
" Eigthies config
"=============================================================================
let g:eighties_enabled = 1
let g:eighties_minimum_width = 60
let g:eighties_extra_width = 10
let g:eighties_compute = 1

"=============================================================================
" Gitgutter config
"=============================================================================
let g:gitgutter_highlight_lines = 1

" ========================================================================================================
"  Gundo
" ========================================================================================================
let g:gundo_width = 10
let g:gundo_preview_height = 10
let g:gundo_right = 1
"=============================================================================
" Indentline Plugin
"=============================================================================
let g:indentLine_enabled = 1
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

let g:indentLine_concealcursor = 1
let g:indentLine_conceallevel = 1

"=============================================================================
" Jedi config
"=============================================================================
"let g:jedi#use_tabs_not_buffers = 1
"let g:jedi#popup_select_first = 1
let g:jedi#completions_enabled = 1

"=============================================================================
" Languagetool define jar
"=============================================================================
let g:languagetool_jar='~/.vim/plugged/vim-grammarous/misc/LanguageTool-3.7/languagetool-commandline.jar'
"=============================================================================
" Neocomplete config
"=============================================================================
let g:neocomplete#data_directory= get(g:, 'neocomplete#data_directory',
      \ '~/.cache/neocomplete')
let g:acp_enableAtStartup = get(g:, 'acp_enableAtStartup', 0)
let g:neocomplete#enable_at_startup =
      \ get(g:, 'neocomplete#enable_at_startup', 1)
let g:neocomplete#enable_smart_case =
      \ get(g:, 'neocomplete#enable_smart_case', 1)
let g:neocomplete#enable_camel_case =
      \ get(g:, 'neocomplete#enable_camel_case', 1)
let g:neocomplete#enable_fuzzy_completion =
      \ get(g:, 'neocomplete#enable_fuzzy_completion', 1)
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length =
      \ get(g:, 'neocomplete#sources#syntax#min_keyword_length', 3)
let g:neocomplete#lock_buffer_name_pattern =
      \ get(g:, 'neocomplete#lock_buffer_name_pattern', '\*ku\*')

let g:neocomplete#sources#dictionary#dictionaries =
      \ get(g:, 'neocomplete#sources#dictionary#dictionaries', {
      \ 'default' : '',
      \ 'vimshell' : $CACHE.'/vimshell/command-history',
      \ 'java' : '~/.vim/dict/java.dict',
      \ 'ruby' : '~/.vim/dict/ruby.dict',
      \ 'scala' : '~/.vim/dict/scala.dict',
      \ })

let g:neocomplete#enable_auto_delimiter =
      \ get(g:, 'neocomplete#enable_auto_delimiter', 1)

if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ =
      \ get(g:neocomplete#keyword_patterns, '_', '\h\k*(\?')

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 0

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.perl =
      \ get(g:neocomplete#sources#omni#input_patterns, 'perl',
      \ '\h\w*->\h\w*\|\h\w*::')
let g:neocomplete#sources#omni#input_patterns.java =
      \ get(g:neocomplete#sources#omni#input_patterns, 'java',
      \ '[^. \t0-9]\.\w*')
let g:neocomplete#sources#omni#input_patterns.lua =
      \ get(g:neocomplete#sources#omni#input_patterns, 'lua',
      \ '[^. \t0-9]\.\w*')
let g:neocomplete#sources#omni#input_patterns.c =
      \ get(g:neocomplete#sources#omni#input_patterns, 'c',
      \ '[^.[:digit:] *\t]\%(\.\|->\)')
let g:neocomplete#sources#omni#input_patterns.cpp =
      \ get(g:neocomplete#sources#omni#input_patterns, 'cpp',
      \ '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::')
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e> neocomplete#cancel_popup()

"=============================================================================
" Neomake config
"=============================================================================
"=======================================
" Open list and move curser
"=======================================
let g:neomake_open_list = get(g:, 'neomake_open_list', 2)
let g:neomake_verbose = get(g:, 'neomake_verbose', 0)
let g:neomake_java_javac_delete_output = get(g:, 'neomake_java_javac_delete_output', 0)

"=============================================================================
" Nerdcommenter config
"=============================================================================
"=======================================
"Remove extra space
"=======================================
let g:NERDRemoveExtraSpaces = 1

"=======================================
"Compact syntax
"=======================================
let g:NERDCompactSexyComs = 1

"=======================================
"Remove unused space
"=======================================
let g:NERDTrimTrailingWhitespace = 1

" ========================================================================================================
"  Nerdtree config
" ========================================================================================================

function! OpenNerdTree()
    let s:exclude = ['COMMIT_EDITMSG', 'MERGE_MSG']
    if index(s:exclude, expand('%:t')) < 0
        NERDTreeFind
        exec "normal! \<c-w>\<c-w>"
    endif
endfunction
autocmd VimEnter * call OpenNerdTree()

let g:NERDTreeWinSize = 25
let g:NERDTreeShowHidden=1
let g:NERDTreeIgnore=['\.swp$', '\~$']
nnoremap <c-n> :NERDTreeToggle<cr>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"=============================================================================
" Powerline config
"=============================================================================
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\

"=============================================================================
" Snippet config
"=============================================================================
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"=============================================================================
" Startfiy config
"=============================================================================
 let g:startify_update_oldfiles = 1
 let g:startfy_session_autoload = 1
 let g:startfy_session_persistence = 1

"=============================================================================
" Supertab config
"=============================================================================
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabLongestHighlight=1
let g:SuperTabLongestEnhanced=1

"=============================================================================
" Syntastic config
"=============================================================================
"=======================================
" Check if the file is readable
"=======================================
if !filereadable('pom.xml') && !filereadable('build.gradle') && isdirectory('bin')
  let g:syntastic_java_javac_options = '-d bin'
endif

"=======================================
" Fix syntax
"=======================================
let g:syntastic_java_javac_config_file_enabled = get(g:, 'syntastic_java_javac_config_file_enabled', 1)
let g:syntastic_java_javac_delete_output = get(g:, 'syntastic_java_javac_delete_output', 0)
let g:syntastic_always_populate_loc_list = get(g:, 'syntastic_always_populate_loc_list', 1)
let g:syntastic_auto_loc_list = get(g:, 'syntastic_auto_loc_list', 1)
let g:syntastic_check_on_open = get(g:, 'syntastic_check_on_open', 0)
let g:syntastic_check_on_wq = get(g:, 'syntastic_check_on_wq', 0)
let g:syntastic_error_symbol = get(g:, 'spacevim_error_symbol', '✖')
let g:syntastic_warning_symbol = get(g:, 'spacevim_warning_symbol', '➤')
let g:syntastic_vimlint_options = get(g:, 'syntastic_vimlint_options', {
      \'EVL102': 1 ,
      \'EVL103': 1 ,
      \'EVL205': 1 ,
      \'EVL105': 1 ,
\})

"=============================================================================
" Unite config
"=============================================================================
let g:unite_source_history_yank_enable = 1
let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_source_rec_max_cache_files=50000
let g:unite_enable_start_insert = 1
let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 10

call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ ], '\|'))

"=============================================================================
" Whitespaces
"=============================================================================

autocmd BufEnter * EnableStripWhitespaceOnSave
```
