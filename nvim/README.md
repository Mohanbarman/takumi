#Nvim config

```
"=============================================================================
" Copyright (c) 2017 deltaxflux
" Author: deltaxflux
" URL: github.com/deltaxflux
" License: GNU General Public License v.3.0
"=============================================================================

"=============================================================================
" Plug config
"=============================================================================

call plug#begin()

"=============================================================================
" General bahaviour
"=============================================================================

"=======================================
" Colorscheme
"=======================================
Plug 'joshdick/onedark.vim'

"=======================================
" Complete with tab
"=======================================
Plug 'ervandew/supertab'

"=======================================
" Build system
"=======================================
Plug 'neomake/neomake'

"=======================================
" Help needed?
"=======================================
Plug 'yggdroot/indentline'

"=======================================
" Whitespaces
"=======================================
Plug 'ntpeters/vim-better-whitespace'

"=======================================
" Auto resize window
"=======================================
Plug 'justincampbell/vim-eighties'

"=======================================
" Huh vim start screen
"=======================================
Plug 'mhinz/vim-startify'

"=======================================
" Benchmark
"=======================================
Plug 'tweekmonster/startuptime.vim'

"=======================================
" Auto end tag
"=======================================
Plug 'tpope/vim-endwise'

"=======================================
" Show the diff
"=======================================
Plug 'mhinz/vim-signify'

"=======================================
" Fileexplorer
"=======================================
Plug 'scrooloose/nerdtree'

"=======================================
" Preview markdown
"=======================================
Plug 'suan/vim-instant-markdown'

"=======================================
" Tmux in vim
"=======================================
Plug 'tmux-plugins/vim-tmux'
"=============================================================================
" Snippets
"=============================================================================
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'

"=============================================================================
" Autcomplete
"=============================================================================
Plug 'prabirshrestha/asyncomplete-necovim.vim'

"=======================================
" C and C++ autocomplete
"=======================================
Plug 'rip-rip/clang_complete'

"=======================================
" Main autocomplete framework
"=======================================
Plug 'roxma/nvim-completion-manager'
Plug 'zchee/deoplete-jedi'

"=============================================================================
" Latex support
"=============================================================================
Plug 'donRaphaco/neotex', { 'for': 'tex' }

"=============================================================================
" Php support
"=============================================================================
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}

"=============================================================================
" Github
"=============================================================================
Plug 'pocke/neco-gh-issues'
Plug 'airblade/vim-gitgutter'

"=============================================================================
" Autcomplete libaries
"=============================================================================

"=======================================
" Syntax autocomplete
"=======================================
Plug 'shougo/neco-syntax'

"=======================================
" Autocomplete for vimscript
"=======================================
Plug 'Shougo/neco-vim'

"=======================================
" Autocomplete for include directory
"=======================================
Plug 'Shougo/neoinclude.vim'

"=============================================================================
" Python support
"=============================================================================
Plug 'davidhalter/jedi-vim'
Plug 'neovim/python-client'
Plug 'klen/python-mode'
Plug 'hynek/vim-python-pep8-indent'
Plug 'fs111/pydoc.vim'

"=============================================================================
" MISC
"=============================================================================
Plug 'marcweber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'chiel92/vim-autoformat'
Plug 'mhinz/vim-startify'
Plug 'tweekmonster/startuptime.vim'

call plug#end()

"=============================================================================
" Colors
"=============================================================================
if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
endif

syntax on
silent colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE
"=============================================================================
" Copyright (c) 2017 deltaxflux
" Author: deltaxflux
" URL: github.com/deltaxflux
" License: GNU General Public License v.3.0
"=============================================================================

autocmd BufNewFile  *.vim 0r ~/.config/nvim/header/vim.vim
autocmd BufNewFile *.sh 0r ~/.config/nvim/header/header.sh

"=============================================================================
" General *
"=============================================================================
set number

"=======================================
" Set history to 500 lines
"=======================================
set history=500

"=======================================
" Enable filetype
"=======================================
filetype plugin on
filetype indent on
"=======================================
" Autoread if the file is changed
"=======================================
set autoread

"=======================================
" strugle with keymaps?
"=======================================
nmap <leader>w :w!<cr>

"=======================================
" Handle permission denied errors
"=======================================
command W w !sudo tee % > /dev/null

"=============================================================================
" UI *
"=============================================================================

"=======================================
" Better vertically movement
"=======================================
set so=7

"=======================================
" Enable wildmenu
"=======================================
set wildmenu

"=======================================
" Show current position
"=======================================
set ruler

"=======================================
" Define cmd height
"=======================================
set cmdheight=2

"=======================================
" Buffer
"=======================================
set hid

"=======================================
" Configure backspaces
"=======================================
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"=======================================
" Ignore cacse when searching
"=======================================
set ignorecase

"=======================================
" Use smartcase
"=======================================
set smartcase

"=======================================
" Highlight search result
"=======================================
set hlsearch

"=======================================
" Modern search
"=======================================
set incsearch

"=======================================
" Better performance
"=======================================
set lazyredraw

"=======================================
" For regular expressions
"=======================================
set magic

"=======================================
" Show matching brackets
"=======================================
set showmatch

"=======================================
" Who the hell invented this?
"=======================================
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"=======================================
" Margin
"=======================================
set foldcolumn=1

"=============================================================================
" Backups? Who cares ?
"=============================================================================

"=======================================
" Turn of them
"=======================================
set nobackup
set nowb
set noswapfile

"=============================================================================
" Text
"=============================================================================

"=======================================
" Use spacetabs
"=======================================
set expandtab

"=======================================
" Be smart
"=======================================
set smarttab

"=======================================
" Define tab
"=======================================
set shiftwidth=4
set tabstop=4

"=======================================
" Linebreaker
"=======================================
set tw=500

"=======================================
" Ident
"=======================================
set ai
set si
set wrap

"=============================================================================
" MISC
"=============================================================================

"=======================================
" Disable scrollbars
"=======================================
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

"=======================================
" Set font
"=======================================
set gfn=Monospace\ 11

"=============================================================================
" Language config
"=============================================================================

"=======================================
" Python
"=======================================
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f #--- <esc>a
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def
au FileType python set cindent
au FileType python set cinkeys-=0#
au FileType python set indentkeys-=0#

"=======================================
" Shell
"=======================================
if exists('$TMUX')
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color
    endif
endif

"=======================================
" Markdown
"=======================================
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

"=======================================
" C filetypes
"=======================================
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

"=======================================
" Secure boot
"=======================================

set exrc
set secure

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

let g:deoplete#enable_at_startup = 1
"=============================================================================
" Gitgutter config
"=============================================================================
let g:gitgutter_highlight_lines = 1

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
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#completions_enabled = 1

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
" Whitespaces
"=============================================================================

autocmd BufEnter * EnableStripWhitespaceOnSave
```
