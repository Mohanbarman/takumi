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
