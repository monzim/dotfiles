call plug#begin('/home/monzim/.config/nvim/pack/')

" File and folder management
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" NerdTree Git info
Plug 'Xuyuanp/nerdtree-git-plugin'

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
Plug 'vim-airline/vim-airline-themes'

" Theme
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'HenryNewcomer/vim-theme-papaya'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'drewtempelmeyer/palenight.vim'

" My Added One
Plug 'liuchengxu/vim-which-key'

" Color HighLight
Plug 'ap/vim-css-color'



"Bracket Colorise
Plug 'luochen1990/rainbow'

"Devicons
Plug 'ryanoasis/vim-devicons'

" Github Copilot
Plug 'https://github.com/github/copilot.vim'
" WakaTime
Plug 'wakatime/vim-wakatime'



" css3 syntax highlight
Plug 'hail2u/vim-css3-syntax'

" Syntax hightlight for .js
Plug 'pangloss/vim-javascript'


Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}
Plug 'iamcco/coc-angular', {'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}


" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

call plug#end()

"colorscheme molokai onehalflight
"colorscheme onehalfdark
syntax on
"set background=dark
colorscheme gruvbox
"highlight Normal ctermfg=grey ctermbg=black guifg=grey guibg=black
highlight Normal ctermfg=white ctermbg=black

" Color HighLight

" Bracket Colorise
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
"Devicons
set encoding=UTF-8

set noerrorbells                                              " Don't add sounds for errors
set number
set nowrap
set nohlsearch
set smartcase
set noswapfile
set nobackup
set undodir=/home/monzim/.config/nvim/nvim-data/backup
set undofile
set incsearch
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
set colorcolumn=120
set clipboard=unnamedplus
set backspace=indent,eol,start
highlight ColorColumn ctermbg=0 guibg=lightgrey

set cursorline
set cursorlineopt=number
autocmd ColorScheme * highlight CursorLineNr cterm=bold term=bold gui=bold


let mapleader=" "
nnoremap <leader>fe :CocCommand flutter.emulators <CR>
nnoremap <leader>fd :below new output:///flutter-dev <CR>
map <leader>h :wincmd h <CR>
map <leader>j :wincmd j <CR>
map <leader>k :wincmd k <CR>
map <leader>l :wincmd l <CR>

nnoremap <C-b> :NERDTreeToggle<CR>
"nnoremap <C-S-b> :NERDTreeFind<CR>
let g:NERDTreeWinPos = "right"


let g:dart_format_on_save = 1
let g:dartfmt_options = ['--fix', '--line-length 120']

" Coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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

"nmap <C-P> :FZF<CR>
nmap <C-P> :Files<CR>

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

"coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-flutter',
  \ 'coc-snippets',
  \ 'coc-yaml',
  \ 'coc-tslint-plugin',
  \ 'coc-tsserver',
  \ 'coc-emmet',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-json',
  \ ]

let g:NERDTreeGitStatusWithFlags = 1

" == AUTOCMD ================================ 
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" Vim Airline
"let g:airline#extensions#tabline#enabled = 1

" My Custom KeyStrokes
nnoremap ; :
vnoremap ; :
" Paste last thing yanked, not deleted
nmap ,p "0p
nmap ,P "0P
" Move between vim windows
nmap <up> <C-w><up>
nmap <down> <C-w><down>
nmap <left> <C-w><left>
nmap <right> <C-w><right>
" Write only if something is chnanged
nnoremap <leader>w :up<CR>

" Moveing text
"vnoremap J :m '>+1<CR>gv=gv
"vnoremap K :m '<-2<CR>gv=gv
"inoremap <C-j> <esc>:m .+1<CR>==
"inoremap <C-k> <esc>:m .-2<CR>==
"nnoremap <leader>k :m '.-2<CR>==
"nnoremap <leader>j :m '.+1<CR>==

"Vim Which Key
"source $HOME/.config/nvim/keys/which-key.vim

" By default timeoutlen is 1000 ms
"set timeoutlen=500



"let g:mapleader = "\<Space>"
"let g:maplocalleader = ','
"nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
"nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
" Test ME How it works
"== AUTOCMD END ================================
