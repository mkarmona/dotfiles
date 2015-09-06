" clang vim global conf vars
let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
let g:clang_exec = 'clang-3.5'
let g:clang_format#command = 'clang-format-3.5'

let g:clang_format#code_style = "google"
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -2,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

" let g:clang_format#style_options = {
"             \ "AccessModifierOffset" : -4,
"             \ "AllowShortIfStatementsOnASingleLine" : "true",
"             \ "AlwaysBreakTemplateDeclarations" : "true",
"             \ "Standard" : "C++11",
"             \ "BreakBeforeBraces" : "Stroustrup"}

let g:clang_auto = 0
let g:clang_c_completeopt = 'menuone,preview'
let g:clang_cpp_completeopt = 'menuone,preview'
let g:clang_diagsopt = ''
map <silent> <Leader>c <Esc>:ClangClosePreviewDiagWindow<CR>
autocmd FileType c,cpp set cindent|set expandtab|set smarttab|set softtabstop=2|set shiftwidth=2

