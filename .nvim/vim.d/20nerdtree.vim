noremap <Leader>nt :NERDTreeToggle<CR>
noremap <Leader>no :NERDTree ./<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


