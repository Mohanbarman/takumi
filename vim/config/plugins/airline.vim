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

