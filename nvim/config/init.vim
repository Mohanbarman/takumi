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

