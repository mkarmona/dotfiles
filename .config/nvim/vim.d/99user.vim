function! HighlightSearch()
    execute 'set hlsearch! hlsearch?'
endfunction

" omni complet mapping
inoremap <silent> <c-space> <c-x><c-o>

" mappings
"map! <C-c>ts :set hlsearch! hlsearch?<CR>
map <C-c>th :<C-u>set hlsearch! hlsearch?<cr><C-u>
map <C-c>tl :<C-u>set number! number?<cr><C-u>
map <C-c>1 :1b<CR>
map <C-c>2 :2b<CR>
map <C-c>3 :3b<CR>
map <C-c>4 :4b<CR>
map <C-c>5 :5b<CR>
map <C-c>6 :6b<CR>
map <C-c>7 :7b<CR>
map <C-c>8 :8b<CR>
map <C-c>9 :9b<CR>
map <C-c>0 :10b<CR>

map <C-c><Return> <C-]> " entramos en el tag
map <C-c><BS> <C-T> " salimos del tag
"map <C-B> \be 

"mappings para los tabs
" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-Enter>     :tabnew<CR>
nnoremap <C-Backspace>     :tabclose<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-Enter>     <Esc>:tabnew<CR>
inoremap <C-Backspace>     <Esc>:tabclose<CR>


"map <Leader>bn :bnext<CR>
"map! <Leader>bn <ESC>:bnext<CR>

"map <Leader>bp :bprevious<CR>
"map! <Leader>bp <ESC>:previous<CR>

"map <Leader>bf :bfirst<CR>
"map! <Leader>bf <ESC>:bfirst<CR>

"map <Leader>bl :blast<CR>
"map! <Leader>bl <ESC>:blast<CR>

" salva la session
nmap <Leader><F2> :mks! .session.vim<CR>

" move lines up and down from grendel-arsenal.googlecode.com
nnoremap <C-Down> :m+<CR>==
nnoremap <C-Up> :m-2<CR>==
inoremap <C-Down> <Esc>:m+<CR>==gi
inoremap <C-Up> <Esc>:m-2<CR>==gi
vnoremap <C-Down> :m'>+<CR>gv=gv
vnoremap <C-Up> :m-2<CR>gv=gv

" mapping begin/end of line in insert mode
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I

noremap <C-c><C-c> "+y
noremap <C-c><C-p> "+p
noremap <C-c><C-x> "+d
inoremap <C-c><C-p> <Esc>"+p

" split map
noremap <C-c><C-s> :<C-u>split<CR><C-u>
inoremap <C-c><C-s> <Esc>:<C-u>split<CR><C-u>

" vsplit map
noremap <C-c><C-v> :<C-u>vsplit<CR><C-u>
inoremap <C-c><C-v> <Esc>:<C-u>vsplit<CR><C-u>

if has("gui_running")
    set background=dark
    "colorscheme materialbox
    "colorscheme colorsbox-stnight
    "colorscheme colorsbox-material
    colorscheme molokai
else
    "let g:rehash256 = 1
    colorscheme gruvbox
endif

