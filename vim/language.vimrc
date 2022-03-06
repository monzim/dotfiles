" Dart Language
let g:dart_format_on_save = 1
let g:dartfmt_options = ['--fix', '--line-length 120']

" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
