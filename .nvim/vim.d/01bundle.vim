call plug#begin('~/.nvim/plugged')

Plug 'Shougo/vimproc.vim', {
\ 'build': {
\	'linux': 'make',
\	},
\ }

Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/deoplete.nvim'
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
Plug 'NLKNguyen/papercolor-theme'
Plug 'kshenoy/vim-signature'
Plug 'hdima/python-syntax'
Plug 'airblade/vim-gitgutter'
Plug 'rust-lang/rust.vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" Add plugins to &runtimepath
call plug#end()

filetype plugin indent on
syn on " syntax on

