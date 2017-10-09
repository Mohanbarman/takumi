"=============================================================================
" Unite plugin
"=============================================================================
let g:unite_enable_start_insert=1
let g:unite_source_rec_max_cache_files=5000
let g:unite_prompt='» '

if executable('ack')
	let g:unite_source_grep_command='ack'
	let g:unite_source_grep_default_opts='--no-heading --no-color -a -C4'
	let g:unite_source_grep_recursive_opt=''
endif

function! s:unite_settings()
	imap <buffer> <C-j>   <Plug>(unite_select_next_line)
	imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
	nmap <buffer> Q <plug>(unite_exit)
	nmap <buffer> <esc> <plug>(unite_exit)
	imap <buffer> <esc> <plug>(unite_exit)
endfunction

autocmd FileType unite call s:unite_settings()

" Set Unite leader
nmap <space> [unite]
nnoremap [unite] <nop>

" Set useful Unite mappings
nnoremap <silent> [unite]t :<C-u>Unite -auto-resize -buffer-name=files file<cr>
nnoremap <silent> [unite]y :<C-u>Unite history/yank -auto-resize -buffer-name=yanks<cr>
nnoremap <silent> [unite]l :<C-u>Unite -auto-resize -buffer-name=line line<cr>
nnoremap <silent> [unite]b :<C-u>Unite -auto-resize -buffer-name=buffers buffer<cr>
nnoremap <silent> [unite]m :<C-u>Unite -auto-resize -buffer-name=mappings mapping<cr>

