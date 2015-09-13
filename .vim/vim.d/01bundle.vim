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
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'

"NeoBundle 'mkarmona/base16-vim'
NeoBundle 'mkarmona/gsl.vim'
NeoBundle 'mkarmona/togglebg.vim'
NeoBundle 'mkarmona/gruvboxal.vim'
"NeoBundle 'mkarmona/concealify.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'kevinw/pyflakes-vim'
"NeoBundle 'mileszs/ack.vim'
NeoBundle 'justmao945/vim-clang'
NeoBundle 'rhysd/vim-clang-format'
"NeoBundle 'SirVer/ultisnips'
"NeoBundle 'honza/vim-snippets'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'bling/vim-airline'
"NeoBundle 'itchyny/lightline.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'NLKNguyen/papercolor-theme'
NeoBundle 'morhetz/gruvbox'
"NeoBundle 'NLKNguyen/c-syntax.vim'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'hdima/python-syntax'
"NeoBundle 'jalcine/cmake.vim'
NeoBundle 'airblade/vim-gitgutter'
"NeoBundle 'rust-lang/rust.vim'
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'junegunn/fzf'
NeoBundle 'JuliaLang/julia-vim'

call neobundle#end()

filetype plugin indent on
syn on " syntax on

NeoBundleCheck
