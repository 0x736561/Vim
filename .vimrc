" vim-plug "
set nocompatible
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'
call plug#end()

" aparência "
colorscheme onedark
set termguicolors
syntax enable
set number

" airline "
let g:airline_powerline_fonts = 1

" auto-completar código "
set omnifunc=syntaxcomplete#Complete

" suporte para mouse "
set mouse=a

" destacar linha selecionada "
set cursorline
:highlight Cursorline cterm=bold ctermbg=black

" destacar termo pesquisado "
set hlsearch

" pesquisar sem capitalização "
set ignorecase
set smartcase

" configurar espaçamento do tab "
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent

" show pares de (), {} e [] "
set showmatch

" configurando explorador de arquivos "
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

" teclas de atalho "
inoremap <c-b> <Esc>:Lex<cr> 
nnoremap <c-b> <Esc>:Lex<cr>
inoremap <c-t> <Esc>:tabnew<cr> 
nnoremap <c-t> <Esc>:tabnew<cr>
nnoremap <c-c> <Esc>:tabclose<cr>
inoremap <c-c> <Esc>:tabclose<cr> 
nnoremap <c-q> <Esc>:q<cr>
inoremap <c-q> <Esc>:q<cr> 
nnoremap <c-s> <Esc>:w<cr>
inoremap <c-s> <Esc>:w<cr> 
inoremap <c-p> <Esc>i<c-x><c-o>
nnoremap <c-s-p> <Esc>:PluginInstall<cr>
inoremap <c-s-p> <Esc>:PluginInstall<cr>
nnoremap <c-p> <Esc>i<c-x><c-o>
