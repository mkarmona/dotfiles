nnoremap <C-c> <nop>
inoremap <C-c> <nop>
nnoremap Q <nop>

function! HighlightSearch()
  if &hls
    return 'hls'
  else
    return ''
  endif
endfunction

" omni complet mapping
inoremap <silent> <c-space> <c-x><c-o>

" mappings
noremap <C-c><C-s> :set hlsearch! hlsearch?<CR>

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
" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-Enter>     :tabnew<CR>
nnoremap <C-Backspace>     :tabclose<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-Enter>     <Esc>:tabnew<CR>
inoremap <C-Backspace>     <Esc>:tabclose<CR>


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
    colorscheme gruvbox
else
    colorscheme gruvbox
endif

