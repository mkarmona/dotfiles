" airline 
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#format = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#csv#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_inactive_collapse = 0

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"let g:airline_symbols.branch = 'λ'

let g:airline_theme = 'gruvboxal'

let g:airline_section_a = "%{airline#util#wrap(airline#parts#mode(),0)}%M"
let g:airline_section_b = "%<%f"
let g:airline_section_c=""
let g:airline_section_x = "%{airline#util#wrap(airline#extensions#branch#get_head(),0)}"
let g:airline_section_y="[%{&ff}%(,%{&fenc}%)%Y%R]"
let g:airline_section_z="%l,%c-%p"
 let g:airline#extensions#default#layout = [
      \ [ 'a', 'b' ],
      \ [ 'x', 'y', 'z', 'warning' ]
      \ ]
let g:airline#extensions#default#section_truncate_width = {}

let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'n',
      \ 'i'  : 'i',
      \ 'R'  : 'r',
      \ 'c'  : 'c',
      \ 'v'  : 'v',
      \ 'V'  : 'vl',
      \ '' : 'vb',
      \ 's'  : 's',
      \ 'S'  : 's',
      \ '' : 's',
      \ }

if has("gui_running")
    " let gvim select its airline theme
else
    "let g:airline_theme = 'base16'
    "let g:airline_theme = 'papercolor'
endif

