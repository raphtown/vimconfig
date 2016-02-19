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
nnoremap <C-u> :GundoToggle<CR>
let g:gundo_close_on_revert = 1

" lusty
set hidden

" supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" pymode
let g:pymode_rope=0
let g:pymode_lint_on_fly=1

" display current file
set laststatus=2
set statusline+=%F
