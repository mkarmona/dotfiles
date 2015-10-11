" unite plugin
let g:unite_enable_ignore_case=1
let g:unite_enable_smart_case=1
let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_source_history_yank_enable=1
let g:unite_source_rec_max_cache_files=20000
let g:unite_source_file_rec_max_cache_files=20000
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_max_candidates = 200

call unite#filters#converter_default#use(['converter_relative_word'])
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('line,outline','matchers','matcher_fuzzy')
call unite#custom#source('buffer,file_mru,file_rec,file_rec/async','matchers','matcher_fuzzy')

call unite#custom#profile('default', 'context', {
\   'start_insert': 1,
\   'winheight': 10,
\   'direction': 'dynamictop',
\   'prompt_direction': 'top',
\   'auto_resize': 0,
\   'no_resize': 1,
\   'split': 0,
\   'toggle': 1,
\   'silent': 1,
\   'max_candidates': 1000,
\   'prompt': '→ '
\ })

nmap <space> [unite]
nnoremap [unite] <nop>

nnoremap <silent> [unite]<space> :<C-u>UniteWithProjectDir -buffer-name=project buffer file_mru -input= file_rec/async bookmark<cr><c-u>
nnoremap <silent> [unite]f :<C-u>Unite -buffer-name=files buffer -input= file_rec/async<cr><c-u>
nnoremap <silent> [unite]c :<C-u>UniteWithCurrentDir -buffer-name=files file_rec/async<cr><c-u>
"nnoremap <silent> [unite]v :<C-u>Unite -buffer-name=conf directory:~/.vim/vim.d/<cr><c-u>
nnoremap <silent> [unite]b :<C-u>Unite -buffer-name=buffers buffer<cr><c-u>
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=recent buffer file_mru<cr><c-u>
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks history/yank<cr><c-u>
nnoremap <silent> [unite]l :<C-u>Unite -buffer-name=line line<cr><c-u>
nnoremap <silent> [unite]/ :<C-u>Unite -buffer-name=ag grep<cr><c-u>
nnoremap <silent> [unite]m :<C-u>Unite -buffer-name=mappings mapping<cr><c-u>
nnoremap <silent> [unite]s :<C-u>Unite -buffer-name=snippets ultisnips<cr><c-u>

