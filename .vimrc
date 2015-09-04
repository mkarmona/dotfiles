if !1 | finish | endif

if has('vim_starting')
	if &compatible
		set nocompatible
	endif

	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', {
\ 'build': {
\	'linux': 'make',
\	},
\ }

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'

"NeoBundle 'mkarmona/base16-vim'
NeoBundle 'mkarmona/gsl.vim'
NeoBundle 'mkarmona/togglebg.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'kevinw/pyflakes-vim'
"NeoBundle 'mileszs/ack.vim'
NeoBundle 'justmao945/vim-clang'
NeoBundle 'rhysd/vim-clang-format'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'bling/vim-airline'
"NeoBundle 'mkarmona/vim-lucius'
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

call neobundle#end()

filetype plugin indent on
syn on " syntax on

NeoBundleCheck

"if strftime("%H") < 12
  "set background=light
"else
  "set background=dark
"endif

set background=light

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"let base16colorspace=256
"let g:base16_shell_path = expand("~/.config/base16-shell")

let mapleader = ',' " esto es el comando para el map

set completeopt=menuone
set cul
set wildmenu
set wildmode=list:longest,full
set backspace=indent,eol,start	" more powerful backspacing
set autoindent		" always set autoindenting on
" set linebreak		" Don't wrap words by default
set textwidth=0		" Don't wrap lines by default 
set viminfo='20,\"50	" read/write a .viminfo file, don't store more than
set history=100		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set tabstop=4
set expandtab
set smarttab
set softtabstop=4
set shiftwidth=4
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set incsearch		" Incremental search
set shiftwidth=4
set nu " numero de lineas
set hlsearch
set hidden
set mouse=a		" Enable mouse usage (all modes)
set autowrite "automatic writing
set autoread "para que recargue el fichero en caso de cambiar
set laststatus=2
set noshowmode
set timeoutlen=500
set lcs=extends:$,tab:/.,eol:$
set fillchars+=vert:│
set listchars=extends:$,tab:/.,eol:¬
set list
" default folding settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1


"let g:PaperColor_Light_Override = { 'background' : '#eeeeee', 'cursorline' : '#e8e8e8' }
"let g:PaperColor_Dark_Override = { 'background' : '#1a1a1a', 'cursorline' : '#303030' }

colorscheme gruvbox

function! HighlightSearch()
  if &hls
    return 'hls'
  else
    return ''
  endif
endfunction

" gruvbox
let g:gruvbox_bold = 1
let g:gruvbox_italic = 0
" soft medium hard
let g:gruvbox_contrast_dark = "medium"
let g:gruvbox_contrast_light = "medium"
let g:gruvbox_italicize_comments = 0
let g:gruvbox_invert_selection = 0

" airline 
let g:airline#extensions#tabline#enabled = 0
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#right_sep = ' '
"let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
let g:airline_inactive_collapse = 0

if has("gui_running")
    " let gvim select its airline theme
else
    "let g:airline_theme = 'base16'
    "let g:airline_theme = 'papercolor'
endif

" pyflakes on demand
let g:pyflakes_autostart = 0
map <F11> :PyflakesToggle<cr>

" pyflakes no quickfix
let g:pyflakes_use_quickfix = 0

" para des/activar jedi mode para python
let g:jedi#auto_vim_initialization = 1
let g:jedi#auto_vim_configuration = 1
let g:jedi#goto_assignments_command = "<leader><leader>jg"
let g:jedi#goto_definitions_command = "<leader><leader>jd"
let g:jedi#documentation_command = "K"
let g:jedi#use_tabs_not_buffers = 0 " 1 if you want to use tabs instead
let g:jedi#popup_on_dot = 0 "not auto show
let g:jedi#popup_select_first = 1
let g:jedi#rename_command = "<leader><leader>jr" "refactoring
let g:jedi#usages_command = "<leader><leader>jn"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#use_splits_not_buffers = "bottom"
let g:jedi#show_call_signatures = 0
let g:jedi#completions_enabled = 1
autocmd FileType python setlocal completeopt-=preview

" python-syntax enabling all highlight
let python_highlight_all = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

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

" vim-go package
let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1
let g:go_fmt_command = "gofmt"
let g:go_highlight_operators = 1
let g:go_bin_path = expand("~/.config/gotools")

" tagbar
let g:tagbar_compat = 1
"let g:tagbar_width = 50

" HTML language for HTML
let g:tagbar_type_html = {
	\ 'ctagstype'	: 'HTML',
	\ }

" CSS language for TagBar
let g:tagbar_type_css = {
	\ 'ctagstype'	: 'Css',
		\ 'kinds'	: [
			\ 'c:classes',
			\ 's:selectors',
			\ 'i:identities',
		\ ]
	\ }

" Markdown language for Tagbar
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '~/.vim/ext/markdown2ctags-master/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

" Go language for TagBar
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : expand('~/.config/gotools/gotags'),
    \ 'ctagsargs' : '-sort -silent'
\ }

 let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits,traits',
        \'i:impls,trait implementations',
    \]
    \}


"syntastic
let g:syntastic_enable_signs = 0
let g:syntastic_quiet_messages = { 'level': 'errors' }
let g:syntastic_auto_loc_list = 0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" omni complet mapping
inoremap <silent> <c-space> <c-x><c-o>

" markdown disable fold
"let g:vim_markdown_folding_disabled=1

" gitgutter no maps
let g:gitgutter_map_keys = 0
" no realtime gitgutter
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" mappings
noremap <Leader>s :set hlsearch! hlsearch?<CR>
noremap <Leader>nt :NERDTreeToggle<CR>
noremap <Leader>no :NERDTree ./<CR>
noremap <Leader>tb :TagbarToggle<CR>
noremap <Leader>mt :SignatureToggle<CR>
noremap <Leader>mr :SignatureRefresh<CR>
noremap <Leader>gt :GitGutterSignsToggle<CR>

noremap <Leader>1 :1b<CR>
noremap <Leader>2 :2b<CR>
noremap <Leader>3 :3b<CR>
noremap <Leader>4 :4b<CR>
noremap <Leader>5 :5b<CR>
noremap <Leader>6 :6b<CR>
noremap <Leader>7 :7b<CR>
noremap <Leader>8 :8b<CR>
noremap <Leader>9 :9b<CR>
noremap <Leader>0 :10b<CR>

map <Leader><Return> <C-]> " entramos en el tag
map <Leader><BS> <C-T> " salimos del tag
"map <C-B> \be 

"mappings para los tabs
nmap <Leader>tn :tabnew<CR>
map! <Leader>tn <Esc>:tabnew<CR>
nmap <Leader>tc :tabclose<CR>
map! <Leader>tc <Esc>:tabclose<CR>

" buffer explorer (plugin)
"map ,,be ,be
"map ,,bs ,bs
imap <Leader><Leader>be <ESC>,be<CR>
imap <Leader><Leader>bs <ESC>,bs<CR>

map <Leader>bn :bnext<CR>
map! <Leader>bn <ESC>:bnext<CR>

map <Leader>bp :bprevious<CR>
map! <Leader>bp <ESC>:previous<CR>

map <Leader>bf :bfirst<CR>
map! <Leader>bf <ESC>:bfirst<CR>

map <Leader>bl :blast<CR>
map! <Leader>bl <ESC>:blast<CR>


" salva la session
nmap <Leader><F2> :mks! .session.vim<CR>

" move lines up and down from grendel-arsenal.googlecode.com
nnoremap <C-Down> :m+<CR>==
nnoremap <C-Up> :m-2<CR>==
inoremap <C-Down> <Esc>:m+<CR>==gi
inoremap <C-Up> <Esc>:m-2<CR>==gi
vnoremap <C-Down> :m'>+<CR>gv=gv
vnoremap <C-Up> :m-2<CR>gv=gv

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

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"map <F12> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
call togglebg#map("<F12>")
