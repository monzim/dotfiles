call plug#begin('~/.vim/plugged')

" File and folder management
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'  " NerdTree Git info

"Themes and colors
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'elvessousa/sobrio'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'cocopon/iceberg.vim'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/sonokai'


"Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'https://github.com/github/copilot.vim' "Github Copilot
Plug 'wakatime/vim-wakatime' "wakatime

"Git
Plug 'tpope/vim-fugitive'

Plug 'ap/vim-css-color' "Color HighLight
Plug 'luochen1990/rainbow'  "Bracket Colorise
Plug 'ryanoasis/vim-devicons'   "Devicons
Plug 'jiangmiao/auto-pairs' " AutoPair

" Markdown preview
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'natebosch/dartlang-snippets'

"syntax highlight
Plug 'hail2u/vim-css3-syntax'   " css3 syntax highlight
Plug 'pangloss/vim-javascript'  " Syntax hightlight for .js

" Language support
Plug 'tpope/vim-projectionist'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}

" Angular Support coc-angular
Plug 'iamcco/coc-angular', {'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}

"Dart
Plug 'dart-lang/dart-vim-plugin'

"Typescript
Plug 'ianks/vim-tsx'
"Plug 'leafgarland/typescript-vim' "This highligt not so good


call plug#end()

