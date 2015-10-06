syntax on

set t_Co=256
set nocompatible    " use vim defaults
set ls=2            " allways show status line
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set number          " show line numbers
"set ignorecase      " ignore case when searching
set noignorecase   " don't ignore case
set title           " show title in console title bar
set ttyfast         " smoother changes
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
set nostartofline   " don't jump to first character when paging
"set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
"set viminfo='20,<50,s10,h

let g:zenburn_high_Contrast = 1
colorscheme zenburn

"set autoindent     " always set autoindenting on
"set smartindent        " smart indent
"set cindent            " cindent 

set showmatch
set shell=/bin/bash\ -i
set shellcmdflag=-ic
"set cursorline

"set wildmenu
"set wildmode=full:list 
set wildmode=list:longest,full
map <F1> <ESC>gT
map <F2> <ESC>gt
map <F4> :set ic!<CR>
map <silent><F5> :set number!<CR>
