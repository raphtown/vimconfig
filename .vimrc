" line features
set number ruler

" enable backspace
set backspace=indent,eol,start

" command composition
set showcmd

" menu
set wildmenu

" pathogen
let g:pathogen_disabled = [ 'pathogen' ]    " don't load self 
let g:LustyJugglerSuppressRubyWarning = 1
call pathogen#infect()                      " load everyhting else
call pathogen#helptags()                    " load plugin help files

" wrapping
set textwidth=80

" indentation
set autoindent
set ts=4 shiftwidth=4 expandtab

" visual
highlight Normal ctermbg=black
set background=dark
set cursorline
set t_Co=256

" syntax highlighting
syntax on
filetype on                 " enables filetype detection
filetype plugin indent on   " enables filetype specific plugins

" colorpack
colorscheme vibrantink

" gundo
nnoremap <F6> :GundoToggle<CR>

" lusty
set hidden

" pep8
" let g:pep8_map='<F6>'

" supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" nerdtree
map <F5> :NERDTreeToggle<CR>

autocmd bufnewfile *.py so header/py_header
