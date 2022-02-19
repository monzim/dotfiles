syntax on
set t_Co=256
"set background=dark
set encoding=UTF-8
set number
set relativenumber
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

set cursorline
set cursorlineopt=number

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

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Typescript
Plug 'ianks/vim-tsx'
"Plug 'leafgarland/typescript-vim' "This highligt not so good

"Git
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" css3 syntax highlight
Plug 'hail2u/vim-css3-syntax'
" Syntax hightlight for .js
Plug 'pangloss/vim-javascript'

" Github Copilot
Plug 'https://github.com/github/copilot.vim'
" WakaTime
Plug 'wakatime/vim-wakatime'

Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}

" Angular Support for vim
Plug 'iamcco/coc-angular', {'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}

" Markdown preview
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

" Themeing and Coloring
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'elvessousa/sobrio'
Plug 'HenryNewcomer/vim-theme-papaya'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'drewtempelmeyer/palenight.vim'

" Color HighLight
Plug 'ap/vim-css-color'
"Bracket Colorise
Plug 'luochen1990/rainbow'
"Devicons
Plug 'ryanoasis/vim-devicons'
" AutoPair
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Theme and Color Settings colorscheme molokai onehalflight
colorscheme gruvbox
"highlight Normal ctermfg=grey ctermbg=black guifg=grey guibg=black
"highlight ColorColumn ctermbg=0 guibg=lightgrey
highlight Normal ctermfg=white ctermbg=black guifg=grey guibg=black
autocmd ColorScheme * highlight CursorLineNr cterm=bold term=bold gui=bold

" Bracket Colorise
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" vim Airline
" let g:airline_theme='sobrio'
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

" Nerd Tree
let g:NERDTreeWinPos = "right"
let g:NERDTreeGitStatusWithFlags = 1

" Dart Language
let g:dart_format_on_save = 1
let g:dartfmt_options = ['--fix', '--line-length 120']

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




" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx


" Keybindings 
let mapleader=" "

map <leader>h :wincmd h <CR>
map <leader>j :wincmd j <CR>
map <leader>k :wincmd k <CR>
map <leader>l :wincmd l <CR>

" NerdTree
nnoremap <C-b> :NERDTreeToggle<CR>
"nnoremap <C-S-b> :NERDTreeFind<CR>

" FZF Files
"nmap <C-P> :FZF<CR>
nmap <C-P> :Files<CR>

" Coc
nmap <silent> gd <Plug>(coc-definition)  " Go to definition
nmap <silent> gy <Plug>(coc-type-definition)  " type definition
nmap <silent> gi <Plug>(coc-implementation)  "find implementation
nmap <silent> gr <Plug>(coc-references)  "find references
nmap <leader>rn <Plug>(coc-rename)  " Symbol renaming.

imap <tab> <Plug>(coc-snippets-expand)  " Expand snippet
let g:UltiSnipsExpandTrigger = '<Nop>'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

" COC Flutter 
nnoremap <leader>fe :CocCommand flutter.emulators <CR>      " Emulators
nnoremap <leader>fd :below new output:///flutter-dev <CR>     " Devtools

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" Git
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

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

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

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

nnoremap <leader>w :up<CR>  "Write only if something is chnanged
