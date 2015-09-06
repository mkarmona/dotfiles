" unite plugin
let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_source_history_yank_enable=1
let g:unite_source_rec_max_cache_files=0
let g:unite_source_file_rec_max_cache_files = 0

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('line,outline','matchers','matcher_fuzzy')
call unite#custom#source('file_mru,file_rec,file_rec/async,grepocate','max_candidates', 0)
call unite#custom#profile('default', 'context', {
\   'start_insert': 1,
\	'direction': 'botright',
\	'prompt_direction': 'top',
\	'auto_resize': 0,
\	'no_resize': 1,
\	'no_split': 1,
\	'toggle': 1,
\	'max_candidates': 500,
\	'prompt': '→ ',
\ })

nmap <space> [unite]
nnoremap [unite] <nop>

" TODO MIRAR COMO LLAMAR AL VIMPROC PERO DESDE EL PATH ACTUAL
nnoremap <silent> [unite]<space> :<C-u>Unite -buffer-name=mixed -start-insert buffer file_mru -input= -resume file_rec/async:! bookmark<cr><c-u>
nnoremap <silent> [unite]f :<C-u>Unite -buffer-name=files -start-insert buffer -input= -resume file_rec/async:!<cr><c-u>
nnoremap <silent> [unite]c :<C-u>Unite -buffer-name=files -start-insert buffer -input= -resume file:!<cr><c-u>
nnoremap <silent> [unite]b :<C-u>Unite -buffer-name=buffers -start-insert buffer<cr><c-u>
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=recent -start-insert buffer file_mru<cr><c-u>
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks -start-insert history/yank<cr><c-u>
nnoremap <silent> [unite]l :<C-u>Unite -buffer-name=line -start-insert line<cr><c-u>
nnoremap <silent> [unite]/ :<C-u>Unite -no-quit -start-insert -buffer-name=search grep:.<cr><c-u>
nnoremap <silent> [unite]m :<C-u>Unite -buffer-name=mappings -start-insert mapping<cr><c-u>
nnoremap <silent> [unite]s :<C-u>Unite -quick-match -start-insert buffer<cr><c-u>

