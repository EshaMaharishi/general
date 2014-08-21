set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
     
set clipboard=unnamedplus

set nonumber
syntax on

highlight ExtraWhitespace ctermbg=yellow
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"easier tagjump short cut"
nnoremap <C-f> g<C-]>

let &colorcolumn=join(range(100,100),",")

"easier tj short cut"
nnoremap <C-f> g<C-]>

colorscheme koehler 
set cursorline
hi CursorLine NONE ctermbg=darkred

autocmd BufWritePre *.py :%s/\s\+$//e

" Enable mouse use in all modes
"set mouse=a

" Make sure mouse clicking always works
"set ttymouse=xterm
