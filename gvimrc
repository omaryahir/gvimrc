"set fullscsreen

"Ubuntu or Elementaryos
"set guioptions -=m "hide menu
"set guioptions -=T "hide toolbar

"Autocomplete
highlight Pmenu guibg=gray gui=bold

"powerline
let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts=0

"symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

"Theming
"colorscheme morning
colorscheme desert "Night
"colorscheme default "Morning
"colorscheme macvim "Morning
"colorscheme omar
"colorscheme slate

"Background OSX only maybe
set transparency=3

"Font -> color and background color
"highlight Normal guifg=#444444 guibg=#FFFFFF "Morning
"highlight NonText guifg=#efefef guibg=#efefef "Morning
"highlight NonText guifg=#333333 guibg=#272822 "Night 39-40-34
"highlight NonText guifg=#333333 guibg=#272822 "Night
highlight NonText guifg=#333333 guibg=#2d2d2d
"highlight Normal guifg=gray guibg=#272822 "Night
"highlight NonText guifg=#444444 guibg=#111111 "Night
"highlight Normal guifg=gray guibg=#000000 "Night
"highlight Normal guifg=gray guibg=#000000 "Night
"highlight Normal guifg=gray guibg=#000033 "Night Blue
highlight Normal guifg=white guibg=#242323 "Night
"highlight Normal guibg=#1d1e19
"highlight NonText guibg=#1d1e19
"highlight Normal guifg=white guibg=#444444
"highlight Normal guifg=white guibg=#252525
"highlight NonText guibg=#4f4f4f
"highlight Normal guifg=white guibg=#272822
"highlight NonText guibg=#050505
"highlight Normal guifg=white guibg=#454545
"highlight NonText guibg=#272822

"Number column
"set number "Muestra la columna de numeros
"highlight lineNR guifg=#555555 
"highlight lineNR guifg=#444444 guibg=#222222 guibg=#26261F   	"Night
"highlight lineNR guifg=#444444 guibg=#272822   	"Night
highlight lineNR guifg=#444444 guibg=#2d2d2d   	"Night
"highlight lineNR guifg=#444444 guibg=#222222 guibg=#000000   	"Night
"highlight lineNR guifg=#bbbbbb guibg=#fefefe 				"Morning
"highlight lineNR guifg=#cccccc

"Line
"set nowrap
"set textwidth=0
"set wrapmargin=0

"Status bar
set laststatus=2

"Filename line
"hi StatusLine guifg=#222222 guibg=#b0ac8f
"hi StatusLine guifg=#555555 guibg=#efefef
"hi StatusLine guifg=gray guibg=#4C4C4C "Night
hi StatusLine guifg=white guibg=gray "Morning

"No selected section
hi StatusLineNC guifg=#777777 guibg=#4a4a4a "Night
"hi StatusLine guifg=white guibg=gray "Morning
"hi StatusLine termbg=blue ctermfg=white 

"Vertical Line Split
set fillchars+=vert:\ 
highlight VertSplit guibg=#222222 guifg=#222222

"Git
"set statusline=%#ErrorMsg#%{GitBranchInfoString}%#StatusLine# 

"Cursor
highlight Cursor guifg=white guibg=#cccccc
"highlight Cursor guifg=#888888 guibg=#cccccc
highlight iCursor guifg=white guibg=#2d81f8
"highlight iCursor guifg=white guibg=#3780ff
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10
set guicursor+=i:blinkon0

 
"Background selection
highlight Visual guibg=#999999 guifg=black

 
"Font facename
"ElementaryOS or Ubuntu
set anti gfn=Ubuntu\ Mono:h18
"set gui=NONE
"set noanti gfn=Dina\ ttf\ 10px\:h18
"set anti gfn=Ubuntu\ Mono 14
"set anti gfn=Ubuntu
"set guifont=Ubuntu\ Mono\ derivative\ Powerline\
"set anti gfn=Ubuntu\ Mono\ derivative\ Powerline 14
"set gfn=Ubuntu\ Mono\ derivative\ Powerline
"set anti gfn=Sauce\ Code\ Powerline\ Light:h14
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\
"set anti gfn=Droid\ Sans\ Mono\ for\ Powerline:h16
"set anti gfn=Dina-medium:h16
"set anti gfn=Monaco:h16
"set anti gfn=Menlo:h13.5
"set guifont=Anonymice\ Powerline
"set gfn=Anonymice\ Powerline:h20
set linespace=2

"Window position
"winp 100 -800
"win 151 46
"winp 52 244
"win 180 35
"win 0 22
winp 250 250
win 154 44


"Comments
hi Comment guifg=#777777

set guioptions-=r "Hide Scrolls
set foldcolumn=1
set tabstop=2
set wrapmargin=15 "Margin of text

"Command bar
set ruler "Show column and row bar

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
set dictionary="/usr/dict/words"

