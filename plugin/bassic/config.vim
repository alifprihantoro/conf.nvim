" =====================================
" Initial settings
" =====================================
set go+=a 
"Disable beep / flash
set vb t_vb=
set mouse=a

" replace tab with spaces
" allow cursor to move to beginning of tab
" will interfere with soft line wrapping (set nolist)
set list lcs=tab:\ \ 

set wildmenu wildmode=full

" init autocmd
autocmd!

" Don't redraw while executing macros (good performance config)
set lazyredraw
" set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" file type recognition
filetype on
filetype plugin on
"-------------------------------------------------------------------------------
" Cursor line
"-------------------------------------------------------------------------------

set cursorline
set cursorcolumn

" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" syntax highlight
syntax on
au BufEnter *.html set syntax=html
