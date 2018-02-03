"=============================================================================
" Plug config
"=============================================================================

let vim_plug_just_installed = 0
let vim_plug_path = expand('~/.config/nvim/autoload/plug.vim')
if !filereadable(vim_plug_path)
    echo "Installing Vim-plug..."
    echo ""
    silent !mkdir -p ~/.config/nvim/autoload
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let vim_plug_just_installed = 1
endif

if vim_plug_just_installed
        :execute 'source '.fnameescape(vim_plug_path)
endif

call plug#begin()

"=============================================================================
" General bahaviour
"=============================================================================

"=======================================
" Colorscheme
"=======================================
Plug 'joshdick/onedark.vim'

"=======================================
" Statusbar in nvim
"=======================================
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'myusuf3/numbers.vim'

"=======================================
" Complete with tab
"=======================================
Plug 'ervandew/supertab'

"=======================================
" Latex is love
"=======================================
Plug 'lervag/vimtex'
Plug 'gerw/vim-latex-suite'
Plug 'gmarik/snipmate.vim'

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

"=======================================
" Unite
"=======================================
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neoyank.vim'

"=======================================
" Syntax check
"=======================================
Plug 'vim-syntastic/syntastic'

"=======================================
" Singlecompile
"=======================================
Plug 'xuhdev/singlecompile'

"=============================================================================
" Snippets
"=============================================================================
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'

"=============================================================================
" Autcomplete
"=============================================================================
Plug 'wokalski/autocomplete-flow'
Plug 'maralla/completor.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'maralla/completor.vim'
Plug 'maralla/completor-neosnippet'
Plug 'shougo/deoplete.nvim'

"=======================================
" C and C++ autocomplete
"=======================================
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': ['cpp', 'c', 'h'] }
Plug 'derekwyatt/vim-protodef', { 'for': ['cpp', 'c', 'h'] }
Plug 'derekwyatt/vim-fswitch', { 'for': ['cpp', 'c', 'h'] }
"Plug 'maralla/completor.vim'
Plug 'nlknguyen/c-syntax.vim', {'for': 'c'}

"=======================================
" Main autocomplete framework
"=======================================
Plug 'Shougo/context_filetype.vim'

"=============================================================================
" Latex support
"=============================================================================
Plug 'donRaphaco/neotex', { 'for': 'tex' }

"=============================================================================
" Github
"=============================================================================
Plug 'airblade/vim-gitgutter'

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

"=======================================
" Autoclose windows
"=======================================
Plug 'Townk/vim-autoclose'

"=======================================
" Search engine
"=======================================
Plug 'mileszs/ack.vim'

"=======================================
" Html plugin
"=======================================
Plug 'mattn/emmet-vim'

"=============================================================================
" Python support
"=============================================================================
Plug 'davidhalter/jedi-vim'
Plug 'neovim/python-client'
Plug 'klen/python-mode'
Plug 'hynek/vim-python-pep8-indent'
Plug 'fs111/pydoc.vim'
"Plug 'fisadev/vim-isort'

"=============================================================================
" MISC
"=============================================================================
Plug 'marcweber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'chiel92/vim-autoformat'
Plug 'mhinz/vim-startify'

"=============================================================================
" END
