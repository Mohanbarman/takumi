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

"=======================================
" Unite
"=======================================
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neoyank.vim'

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
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'ajh17/vimcompletesme'

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

"=============================================================================
" END
"=============================================================================

call plug#end()
