" first file to load with bundle

if !1 | finish | endif

if has('vim_starting')
    if &compatible
        set nocompatible
    endif

    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" load intial files
exe 'runtime!' 'vim.d/01bundle.vim'
exe 'runtime!' 'vim.d/02settings.vim'

exe 'runtime!' 'vim.d/20*.vim'

exe 'runtime' 'vim.d/99user.vim'
