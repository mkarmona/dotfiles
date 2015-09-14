let g:ycm_autoclose_preview_window_after_completion=10
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_auto_trigger = 1
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}
let g:ycm_filetype_specific_completion_to_disable = {
      \ 'gitcommit': 1
      \}
let g:ycm_key_invoke_completion = '<C-Space>'
