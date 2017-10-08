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

"=======================================
" MAC NVIM
"=======================================
if has("gui_macnvim")
    autocmd GUIEnter * set vb t_vb=
endif

"=======================================
" GUI Options
"=======================================
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

"=============================================================================
" Backups? Who cares ?
"=============================================================================

"=======================================
" Turn of them
"=======================================
set nobackup
set nowb
set noswapfile

"=======================================
" Set Gnome color
"=======================================
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

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
" Ident AUTO;SMART;WRAP Lines
"=======================================
set autoindent
set smartindent
set bg=dark
set nowrap
set paste

"=======================================
" Visual mode
"=======================================
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"=======================================
" Movement
"=======================================
map <silent> <leader><cr> :noh<cr>

"=======================================
" Search with space
"=======================================
map <space> /
map <c-space> ?

"=======================================
" Disable highlight
"=======================================
map <silent> <leader><cr> :noh<cr>

"=======================================
" Smart movement
"=======================================
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"=======================================
" Buffer mapping
"=======================================
map <leader>ba :bufdo bd<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
map <leader>bd :Bclose<cr>:tabclose<cr>gT

"=======================================
" Managing tabs
"=======================================
imap <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

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

"=======================================
" Spell checking
"=======================================
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=]"

"=======================================
" Remember curser position
"=======================================
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"=======================================
" Help function
"=======================================
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ""

endfunction
"=======================================
" Custom function
"=======================================
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif
    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
