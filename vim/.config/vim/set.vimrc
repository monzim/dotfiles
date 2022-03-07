set exrc	"if any vimrc find in root directory it will use it
set guicursor =
set relativenumber
set number
set nohlsearch	"after search text will not marked
set hidden	"for allow buffer run in background it use some memory
set noerrorbells	"no sound on error
set tabstop =4 softtabstop=4
set shiftwidth=4
se expandtab
set smartindent
set wrap	"text will wrap after sceen edge

syntax on
set t_co=256
set encoding=UTF-8
"set termguicolors

set noswapfile
set nobackup
set undodir =~/.vim/undodir
set undofile

set incsearch	"highlingt search
set scrolloff=8	"Scroff off after this number of lines from top and botton

set signcolumn=yes	"show extra column for little info
set colorcolumn=80	"linting hint
 
set cmdheight=2 "Give more space for display msg
set updatetime=50   "delay not good for good experience

" Better command line completion  'wildmenu' 'wmnu' 'nowildmenu' 'nowmnu'
set wmnu

" mouse support
set mouse=a
set mousemodel=popup