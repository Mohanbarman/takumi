```
____o__ __o____            o                                       o
  /   \   /   \            <|>                                    _<|>_
       \o/                 / \
        |        o__ __o/  \o/  o/   o       o   \o__ __o__ __o     o
       < >      /v     |    |  /v   <|>     <|>   |     |     |>   <|>
        |      />     / \  / \/>    < >     < >  / \   / \   / \   / \
        o      \      \o/  \o/\o     |       |   \o/   \o/   \o/   \o/
       <|       o      |    |  v\    o       o    |     |     |     |
       / \      <\__  / \  / \  <\   <\__ __/>   / \   / \   / \   / \

```

# Dotfiles

### Getting started
Only thing you have to do:
```
curl -Sf https://raw.githubusercontent.com/deltaxflux/takumi/master/install/install.sh | bash
```

## Features
* Tmux config
* zsh config
* vim config
* neovim config

### Missing
* Install requirements

### Dependencies
* clang 
* vim
* neovim
* python
* python3
* pip
* pip3
* python modules: neovim
* tmux
* zsh 
* git 
* make
* gcc 

-------
## Wiki
## 1. VIM
Vim is a clone of Bill Joy's vi text editor program for Unix. It is designed to fast and more comfortable as vi.Part of Vim's power is that it can be extensively customized. The Vim config include 43 unique plugins and 2 colorschemes.

### Plugins
* bin/vim-airine
* chie92/vim-atoformat
* davidhater/jedi-vim
* docnext/coseta.vim
* ervandew/spertab
* exvim/ex-cref
* fs111/pydoc.vim
* honza/vim-snippets
*" ins
* jianmiao/ato-pairs
* jreybert/vimait
* jnenn/vim-ithb-dashboard
* jstincampbe/vim-eihties
* majtsshi/tabar
* marcweber/vim-addon-mw-tis
* mattn/emmet-vim
* mhinz/vim-sinify
* mhinz/vim-startify
* ntpeters/vim-better-whitespace
* pasticboy/vim-markdown
* reedes/vim-exica
* reedes/vim-wordy
* rhysd/ithb-compete.vim
* rhysd/vim-can-format
* rhysd/vim-rammaros
* rip-rip/can_compete
* scroooose/nerdtree
* scroooose/syntastic
* shoo/neocompete.vim
* shoo/neosnippet
* shoo/neosnippet-snippets
* shoo/nite.vim
* shoo/vimshe.vim
* sirver/tisnips
* sj/ndo.vim
* sonph/onehaf
* thinca/vim-ref
* tpope/vim-endwise
* tpope/vim-fitive
* tpope/vim-srrond
* vim-airine/vim-airine-themes
* vim-scripts/LanaeToo
* ydroot/indentine

### Plugins Wiki

-------
##### Auto pairs
Insert or delete brackets, parens, quotes in pair.

-------
##### Clang complete
This plugin uses clang for accurately completing C and C++ code.

-------
##### Closetag
functions and mappings to close open HTML/XML tags

-------
##### Emmet
Emmet (formerly Zen Coding) is a web-developer’s toolkit that can greatly improve your HTML & CSS workflow.

With Emmet, you can type CSS-like expressions that can be dynamically parsed, and produce output depending on what you type in the abbreviation. Emmet is developed and optimised for web-developers whose workflow depends on HTML/XML and CSS, but can be used with programming languages too.

-------
##### Ex Cref
A C-reference manual especially designed for Vim

-------
#####  Github complete
Github-complete.vim is a completion plugin to complete things related to GitHub. It generates, caches and contextually shows candidates of completion via GitHub API.

-------
##### Gundo
Gundo.vim is Vim plugin to visualize your Vim undo tree.

-------
##### IndentLine
This plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces.

-------
##### Jedi
Jedi-vim is a VIM binding to the autocompletion library Jedi.

-------
##### LanguageTool
LanguageTool detects grammar mistakes that a spelling checker cannot detect such as "it work" instead of "it works". LanguageTool can also detect spelling mistakes using Hunspell dictionaries bundled with LanguageTool for several languages or using morfologik for other languages. Vim builtin spelling checker can also of course be used along with LanguageTool. One advantage of the spelling checker of LanguageTool over Vim spelling checker, is that it uses the native Hunspell dictionary directly, so it works even with the latest Hunspell dictionaries containing features not supported by Vim. For example, the latest French Hunspell dictionaries from http://www.dicollecte.org are not supported by Vim but they work well with LanguageTool. On the other hand, the Vim native spelling checker is faster and better integrated with Vim.

-------
##### Neocomplete
Neocomplete is the abbreviation of "neo-completion with cache". It provides keyword completion system by maintaining a cache of keywords in the current buffer. neocomplete can be customized easily and has many more features than Vim's built-in completion.

-------
##### Neosnippet
The Neosnippet plug-In adds snippet support to Vim. Snippets are small templates for commonly used code that you can fill in on the fly. To use snippets can increase your productivity in Vim a lot. The functionality of this plug-in is quite similar to plug-ins like snipMate.vim or snippetsEmu.vim. But since you can choose snippets with the neocomplcache / neocomplete interface, you might have less trouble using them, because you do not have to remember each snippet name.

-------
##### Neosnippet-snippets
The standard snippets repository for neosnippet.

-------
##### Nerdtree
The NERD tree allows you to explore your filesystem and to open files and directories. It presents the filesystem to you in the form of a tree which you manipulate with the keyboard and/or mouse. It also allows you to perform simple filesystem operations.

-------
##### Onehalf
A color scheme for Sublime Text, N/Vim, iTerm, and more. Based on Atom's One.

-------
##### Pydoc
his utility will invoke the external pydoc script (pydoc.py comes with the standard Python installation) and use it to retrieve relevant documentation. This information is displayed in a new Vim window just like the internal Vim help. Remaps the 'K' command to provide for easy access. For example, let's say you're editing a program that uses the 'os' module. Simply position the cursor over 'os' and hit K and a new window will appear (in Vim) with the full module documentation. As a cool side effect, the pydoc buffers are now candidates for text completion, so this script provides a quick and easy way of loading a module's identifiers into your completion list.

-------
##### Supertab
Supertab is a vim plugin which allows you to use Tab for all your insert completion needs.

-------
##### Syntastic
Syntax checking hacks for vim.

-------
##### Tagbar
Tagbar is a Vim plugin that provides an easy way to browse the tags of the current file and get an overview of its structure. It does this by creating a sidebar that displays the ctags-generated tags of the current file, ordered by their scope. This means that for example methods in C++ are displayed under the class they are defined in.

-------
##### Ultisnips
UltiSnips - The ultimate snippet solution for Vim.

-------
##### Unite
The unite or unite.vim plug-in can search and display information from arbitrary sources like files, buffers, recently used files or registers. You can run several pre-defined actions on a target displayed in the unite window.

-------
##### Addon-mw-utils
Interpret a file by function and cache file automatically

-------
##### Vimagit
Ease your git workflow within Vim

-------
##### Vim Airline
Lean & mean status/tabline for vim that's light as air.

-------
##### Vim Airline Theme
A collection of themes for vim-airline.

-------
##### Vim Autoformat
Provide easy code formatting in Vim by integrating existing code formatters.

-------
##### Vim Better whitespaces
Better whitespace highlighting for Vim.

-------
##### Vim clang format
Vim plugin for clang-format, a formatter for C, C++, Obj-C, Java, JavaScript, TypeScript and ProtoBuf.

-------
##### Vim endwise
This is a simple plugin that helps to end certain structures automatically.

-------
##### Vim fugitive
Fugitive.vim: a Git wrapper so awesome, it should be illegal.

-------
##### Github dashboard
Browse GitHub events in Vim.

-------
##### Grmmarous
A powerful grammar checker for Vim using LanguageTool.

-------
##### Vim-lexical
Build on Vim’s spell/thes/dict completion.

-------
##### Vim Markdown
This is the development version of Vim's included syntax highlighting and filetype plugins for Markdown. Generally you don't need to install these if you are running a recent version of Vim.

-------
##### Vim ref
Integrated reference viewer.

-------
##### Vimshell
Powerful shell implemented by vim.

-------
##### Vim Signify
Show a diff using Vim its sign column.

-------
##### Vim snippets
Vim-snipmate default snippet.

-------
##### Vim Startify
This plugin provides a start screen for Vim and Neovim.

It provides dynamically created headers or footers and uses configurable lists to show recently used or bookmarked files and persistent sessions. All of this can be accessed in a simple to use menu that even allows to open multiple entries at once.

-------
##### Vim surround
Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.

-------
##### Vim wordy
Uncover usage problems in your writing.

-------
### 1.1 Configure Vim

#### Colors
```
"=============================================================================
" Colors
"=============================================================================

let date = strftime("$H")
if date > 7 && date < 19
colorscheme onehalflight
else
colorscheme onehalfdark
endif

```

#### Functions
```
"=============================================================================
" Custom functions
"=============================================================================

function! InsertSmall ()
	r~/.vim/custom/small.txt
	endfunction

function! InsertBig()
	r~/.vim/custom/big.txt
	endfunction
```

#### Mappings and movement

```
"=============================================================================
" Mappings and movement
"=============================================================================
noremap <F3> :Autoformat<CR>

nmap <silent> <unique> <leader> F4 <Plug>CRV_CRefVimNormal

```

#### Init Vim
```
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
endfunc
autocmd BufNewFile * normal G

"=======================================
" Spell check
"=======================================
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
set spell

```

#### Plugins

```
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
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree'
argv()[0] | wincmd p | ene | endif
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
 let g:startify_custom_header = [
    \'____o__ __o____            o                                       o',
    \'  /   \   /   \            <|>                                    _<|>_',
    \'       \o/                 / \',
    \'        |        o__ __o/  \o/  o/   o       o   \o__ __o__ __o     o',
    \'       < >      /v     |    |  /v   <|>     <|>   |     |     |>   <|>',
    \'        |      />     / \  / \/>    < >     < >  / \   / \   / \   / \',
    \'        o      \      \o/  \o/\o     |       |   \o/   \o/   \o/   \o/',
    \'       <|       o      |    |  v\    o       o    |     |     |     |',
    \'       / \      <\__  / \  / \  <\   <\__ __/>   / \   / \   / \   / \',
    \'',
    \]

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

## 2. Neovim
