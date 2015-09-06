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


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"map <F12> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
call togglebg#map("<F12>")

