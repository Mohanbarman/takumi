"=============================================================================
" Colors
"=============================================================================
if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
endif

syntax on
try
    silent colorscheme onedark
catch
endtry

hi Normal guibg=NONE ctermbg=NONE
