call plug#begin('~/AppData/Local/vs_code_nvim/plugged')

" File and folder management
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'natebosch/dartlang-snippets'

" Language support
Plug 'tpope/vim-projectionist'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Typescript
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

" Theme
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'

" My Added One
Plug 'liuchengxu/vim-which-key'

call plug#end()
"colorscheme molokai
colorscheme gruvbox

set noerrorbells                                              " Don't add sounds for errors
set number
set nowrap
set nohlsearch
set smartcase
set noswapfile
set nobackup
set undodir=~/AppData/Local/nvim-data/backup
set undofile
set incsearch
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
set colorcolumn=120
set clipboard=unnamedplus
set backspace=indent,eol,start
highlight ColorColumn ctermbg=0 guibg=lightgrey

let mapleader=" "
nnoremap <leader>fe :CocCommand flutter.emulators <CR>
nnoremap <leader>fd :below new output:///flutter-dev <CR>
map <leader>h :wincmd h <CR>
map <leader>j :wincmd j <CR>
map <leader>k :wincmd k <CR>
map <leader>l :wincmd l <CR>

nnoremap <C-b> :NERDTreeToggle<CR>
" nnoremap <C-S-b> :NERDTreeFind<CR>

let g:dart_format_on_save = 1
let g:dartfmt_options = ['--fix', '--line-length 120']


" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <C-P> :FZF<CR>

nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>

imap <tab> <Plug>(coc-snippets-expand)
let g:UltiSnipsExpandTrigger = '<Nop>'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)



let g:NERDTreeGitStatusWithFlags = 1

" == AUTOCMD ================================ 
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" Vim Which Key
source $HOME/.config/nvim/keys/which-key.vim



" By default timeoutlen is 1000 ms
set timeoutlen=500



let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

"== AUTOCMD END ================================
