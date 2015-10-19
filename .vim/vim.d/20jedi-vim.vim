" para des/activar jedi mode para python
let g:jedi#auto_vim_initialization = 1
let g:jedi#auto_vim_configuration = 1
let g:jedi#goto_assignments_command = "<C-c>ja"
let g:jedi#goto_definitions_command = "<C-c>jd"
let g:jedi#documentation_command = "<C-c>jk"
let g:jedi#use_tabs_not_buffers = 0 " 1 if you want to use tabs instead
let g:jedi#popup_on_dot = 0 "not auto show
let g:jedi#popup_select_first = 0
let g:jedi#rename_command = "<C-c>jr" "refactoring
let g:jedi#usages_command = "<C-c>ju"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#use_splits_not_buffers = "bottom"
let g:jedi#show_call_signatures = 0
let g:jedi#completions_enabled = 1
"autocmd FileType python setlocal completeopt-=preview

