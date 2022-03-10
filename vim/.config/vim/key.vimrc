" Keybindings 
let mapleader=" "
nnoremap ; :
vnoremap ; :

"Press jk fast to enter
inoremap jk <ESC>

nnoremap <leader>w :up<CR>
"Write only if something is chnanged

map <leader>h :wincmd h <CR>
map <leader>j :wincmd j <CR>
map <leader>k :wincmd k <CR>
map <leader>l :wincmd l <CR>

"nmap <C-P> :FZF<CR>    " FZF Files
nmap <leader>f :Files<CR>

"Paste last thing yanked, not deleted
nmap ,p "0p 
nmap ,P "0P

" Move between vim windows
nmap <up> <C-w><up>
nmap <down> <C-w><down>
nmap <left> <C-w><left>
nmap <right> <C-w><right>

" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" Git
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Better Window Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Resize with arrows
nnoremap + :res +5CR><
nnoremap _ :res -5CR><>
