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
