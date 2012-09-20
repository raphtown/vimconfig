filetype on
filetype plugin on
syntax enable
set autoindent
set foldmethod=marker
set ts=4
set wildmenu
set wildmode=list:longest,full
set number
set expandtab

if !exists("autocommands_loaded")
  let autocommands_loaded = 1
  autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python
endif

" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
