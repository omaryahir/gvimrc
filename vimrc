set tabstop=4
set shiftwidth=4
set expandtab

"colorscheme default
"colorscheme murphy
colorscheme desert
"colorscheme elflord
"colorscheme pablo
"colorscheme monokai
"colorscheme molokai
"colorscheme macvim
"colorscheme omar
"colorscheme codeschool

"Activar los colores de fondo
set t_Co=256



syntax on

" La mejor status line https://github.com/bling/vim-airline
"Under .vim directory, plugin, doc and autoload directories should go. I suspect vim-airline-master directory went under .vim directory and that is why the plugin is not getting set up.
"https://powerline.readthedocs.org/en/latest/fontpatching.html
"Install home brew http://brew.sh/index_es.html
"http://stackoverflow.com/questions/5559029/quickly-switching-buffers-in-vim-normal-mode
"https://github.com/tpope/vim-fugitive
set laststatus=2

"This line enable airline's tab
let g:airline#extensions#tabline#enabled = 1

"tab options
let g:airline#extensions#tabline#fnamemod = ':t' 
map <C-t> :tabnew<CR> 
map <C-h> :tabnext<CR> 
map <C-g> :tabprevious<CR> 
"let g:airline#extensions#tabline#left_sep = ' ' 
"let g:airline#extensions#tabline#left_alt_sep = ' '


let g:airline_powerline_fonts=0
"let g:airline_theme='murmur'
"let g:airline_theme='light'
"let g:airline_theme='jellybeans'
"let g:airline_theme='sol'
"let g:airline_theme='bubblegum"

"symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

"hi StatusLine ctermfg=black ctermbg=lightgray
"hi StatusLine ctermbg=gray ctermfg=black
"set statusline=%{GitBranchInfoString()}

"colorscheme morning "background gray
"highlight Normal ctermbg=white


"set number "Muestra la columna de numeros
highlight LineNr term=bold cterm=NONE ctermfg=DarkGray ctermbg=NONE
"hi LineNr ctermfg=white

set fillchars+=vert:\ 
"highlight VertSplit ctermbg=lightgray ctermfg=lightgray


hi Comment ctermfg=DarkGray
"hi Statement term=bold ctermfg=DarkGreen
hi PreProc term=underline ctermfg=DarkBlue
hi Special term=bold ctermfg=Brown
hi Identifier ctermfg=LightGray 

hi Constant ctermfg=Blue
hi Type ctermfg=Brown
hi Visual ctermbg=LightBlue ctermfg=white

"hi Cursor ctermfg=white ctermbg=gray 
"hi iCursor ctermfg=white ctermbg=blue
set foldcolumn=2
"hi Folded  ctermfg=white
"hi FoldColumn ctermfg=white

"set runtimepath^=~/.vim/bundle/ctrlp.vim

"map <silent> <C-n> :NERDTreeToggle<CR>


"Autocomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
let g:neocomplcache_enable_at_startup = 1
"highlight Pmenu ctermbg=238 gui=bold


