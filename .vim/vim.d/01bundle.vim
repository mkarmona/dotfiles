call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', {
\ 'build': {
\	'linux': 'make',
\	},
\ }

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/vimfiler.vim'

NeoBundle 'mkarmona/gsl.vim'
NeoBundle 'mkarmona/togglebg.vim'
NeoBundle 'mkarmona/gruvboxal.vim'
NeoBundle 'vim-pandoc/vim-pandoc'
NeoBundle 'vim-pandoc/vim-pandoc-syntax'

NeoBundle 'fatih/vim-go'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'kevinw/pyflakes-vim'
NeoBundle 'justmao945/vim-clang'
NeoBundle 'rhysd/vim-clang-format'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'bling/vim-airline'
NeoBundle 'rking/ag.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'gregsexton/gitv'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'hdima/python-syntax'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'sirver/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'airblade/vim-rooter'

call neobundle#end()

filetype plugin indent on
syn on " syntax on

NeoBundleCheck
