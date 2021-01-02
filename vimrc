
"VIM PLUG
"
"" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Initialize plugin system
call plug#end()



"Enable click mouse on terminal
set mouse=a

"Defint tab spaces
set tabstop=4
set shiftwidth=4
set expandtab

colorscheme desert
"colorscheme default
"colorscheme murphy
"colorscheme elflord
"colorscheme pablo
"colorscheme monokai
"colorscheme molokai
"colorscheme macvim
"colorscheme omar
"colorscheme codeschool

"Activar los colores de fondo
set t_Co=256

"[y] --> yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
set clipboard=unnamed


set nowrap
syntax on

"AirLine
"My Favorite Status line: https://github.com/bling/vim-airline
"Under .vim directory, plugin, doc and autoload directories should go. I suspect vim-airline-master directory went under .vim directory and that is why the plugin is not getting set up.
"https://powerline.readthedocs.org/en/latest/fontpatching.html
"Install home brew http://brew.sh/index_es.html
"http://stackoverflow.com/questions/5559029/quickly-switching-buffers-in-vim-normal-mode
"https://github.com/tpope/vim-fugitive
set laststatus=2

"This line enable airline's tab
let g:airline#extensions#tabline#enabled = 1

"GIT branch -- via -- https://github.com/tpope/vim-fugitive
let g:airline#extensions#branch#enabled = 1

"tab options
let g:airline#extensions#tabline#fnamemod = ':t' 
map <C-t> :tabnew<CR> 
map <C-h> :tabnext<CR> 
map <C-g> :tabprevious<CR> 


let g:airline_powerline_fonts=1
"let g:airline_theme='murmur'
"let g:airline_theme='light'
"let g:airline_theme='jellybeans'
"let g:airline_theme='sol'
"let g:airline_theme='bubblegum"

"symbols
let g:airline#extensions#tabline#left_sep = '▛'
let g:airline#extensions#tabline#left_alt_sep = '▛'
let g:airline_left_sep = '▛'
let g:airline_left_alt_sep = '▛'
let g:airline_right_sep = '▜'
let g:airline_right_alt_sep = '▜'

"hi StatusLine ctermfg=black ctermbg=lightgray
"hi StatusLine ctermbg=gray ctermfg=black
"set statusline=%{GitBranchInfoString()}

"colorscheme morning "background gray
"highlight Normal ctermbg=white


set number "Muestra la columna de numeros
highlight LineNr term=bold cterm=NONE ctermfg=DarkGray ctermbg=NONE
"hi LineNr ctermfg=white

set fillchars+=vert:\ 
" more colors...
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
" https://github.com/guns/xterm-color-table.vim
highlight VertSplit ctermbg=235 ctermfg=235


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

"CtrlP
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll)$',
"  \ 'link': 'some_bad_symbolic_links',
"  \ }
"let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_user_command = 'find . -name "%s"'
"let g:ctrlp_max_files=0

"NERDTree 

map <silent> <C-n> :NERDTree<CR>
map <C-b> :NERDTreeToggle<CR> 

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" ----

let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=black    " terminal Vim


"Autocomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
let g:neocomplcache_enable_at_startup = 1
"highlight Pmenu ctermbg=238 gui=bold

"FZF
map <C-o> :FZF<CR>
map <C-S-f>  :Rg<CR>

"Remove beep
set belloff=all



