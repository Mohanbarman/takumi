"=============================================================================
" General *
"=============================================================================
set number

"=======================================
" Set history to 500 lines
"=======================================
set history=500

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
" Ignore pattern when searching
"=======================================
set ignorecase

"=======================================
" Highlight pattern
"=======================================
set incsearch

"=======================================
" Indent shiftwidth
"=======================================
set shiftround

"=======================================
" Show invisible characters
"=======================================
set list
set listchars=tab:\|\ ,trail:•

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
" Detect modeline hints
"=======================================
set modeline

"=======================================
" Expand tab number
"=======================================
set tabpagemax=50

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
" Set columns
"=======================================
set colorcolumn=80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
autocmd WinEnter * match OverLength /\%81v.\+/

"=======================================
" Margin
"=======================================
set foldcolumn=1

"=======================================
" Set grep tool
"=======================================
if executable('ack')
	set grepprg=ack\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $*
	set grepformat=%f:%l:%c:%m
endif

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
" UI Tweaks
"=============================================================================
set number
set showcmd
set lazyredraw
set laststatus=2
set scrolloff=10
set noshowmode
set cursorline
set linebreak
let &showbreak='↪ '
autocmd WinLeave * setlocal nocursorline
autocmd WinEnter * setlocal cursorline
set splitbelow
set splitright

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
let python_highlight_builtins = 1
let python_highlight_type_annotations = 1
let python_highlight_exceptions = 1
let python_highlight_string_formatting = 1
let python_highlight_string_format = 1
let python_highlight_string_templates = 0
let python_highlight_indent_errors = 1
let python_highlight_space_errors = 0
let python_highlight_doctests = 1

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
" Additional highlight
"=======================================
au! BufRead,BufNewFile *.wsgi setfiletype python
au! BufRead,BufNewFile *.sass setfiletype sass
au! BufRead,BufNewFile *.scss setfiletype scss
au! BufRead,BufNewFile *.haml setfiletype haml
au! BufRead,BufNewFile *.less setfiletype less

"=======================================
" Tab settings
"=======================================
au FileType cpp    setl ts=4 sw=4 sts=4
au FileType ruby   setl ts=4 sw=4 sts=4
au FileType yaml   setl ts=4 sw=4 sts=4
au FileType html   setl ts=4 sw=4 sts=4
au FileType jinja  setl ts=4 sw=4 sts=4
au FileType lua    setl ts=4 sw=4 sts=4
au FileType haml   setl ts=4 sw=4 sts=4
au FileType sass   setl ts=4 sw=4 sts=4
au FileType scss   setl ts=4 sw=4 sts=4
au FileType make   setl ts=4 sw=4 sts=4 noet
au FileType gitcommit setl spell

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

"=============================================================================
" Lastly gui changes
"=============================================================================
if has('gui_running')
	set lines=999 columns=9999

	set guioptions+=t
	set guioptions-=T

	if has('gui_macvim')
		set gfn=Sauce\ Code\ Powerline\ Light:h12
		set transparency=2
	endif

	if has('gui_gtk')
		set gfn=Sauce\ Code\ Powerline\ Light:h12
	endif
else
	if $COLORTERM == 'gnome-terminal'
		set t_Co=256
	endif

	if $TERM_PROGRAM == 'iTerm.app'
		" different cursors for insert vs normal mode
		let &t_SI = "\<Esc>]50;CursorShape=1\x7"
		let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	endif
endif

