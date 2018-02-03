"=============================================================================
" Airline config
"=============================================================================
let g:airline_powerline_fonts = 0
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_exclude_preview = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:bufferline_echo = 1
let g:airline_skip_empty_sections = 1
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

"=======================================
" Enable airline ~ required
"=======================================
set laststatus=2
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

"=======================================
" Design
