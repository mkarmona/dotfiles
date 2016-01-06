" clang vim global conf vars
let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
let g:clang_exec = 'clang-3.5'
let g:clang_auto = 1
let g:clang_c_completeopt = 'menuone,noinsert'
let g:clang_cpp_completeopt = 'menuone,noinsert'
let g:clang_diagsopt = ''
map <silent> <C-c>cp <Esc>:<C-u>ClangClosePreviewDiagWindow<CR><C-u>
autocmd FileType c,cpp set cindent|set expandtab|set smarttab|set softtabstop=2|set shiftwidth=2

