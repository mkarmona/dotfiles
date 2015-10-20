call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimfiler.vim'

Plug 'mkarmona/gsl.vim'
Plug 'mkarmona/togglebg.vim'
Plug 'mkarmona/gruvboxal.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'kevinw/pyflakes-vim'
Plug 'justmao945/vim-clang'
Plug 'rhysd/vim-clang-format'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'rking/ag.vim'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'morhetz/gruvbox'
Plug 'kshenoy/vim-signature'
Plug 'hdima/python-syntax'
Plug 'airblade/vim-gitgutter'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-rooter'
Plug 'roman/golden-ratio'

Plug 'luochen1990/rainbow'
Plug 'kovisoft/paredit'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-fireplace'

let g:plug_url_format = 'git@github.com:%s.git'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-dispatch'

" Add plugins to &runtimepath
call plug#end()

filetype plugin indent on
syn on " syntax on

