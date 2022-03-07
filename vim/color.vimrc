if &term =~ '256color'
  set t_ut=
endif

"set bg=dark

"sonokai gruvbox sobrio molokai
colorscheme sonokai 
let g:gruvbox_contrast='hard'
"highlight Normal ctermfg=white guibg=NONE ctermbg=NONE
"highlight Normal ctermfg=white ctermbg=black guifg=grey guibg=black
autocmd ColorScheme * highlight CursorLineNr cterm=bold term=bold gui=bold

" Bracket Colorise
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle


