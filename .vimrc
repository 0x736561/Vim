" vim-plug "
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" paletas de cores "
Plug 'joshdick/onedark.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'cormacrelf/vim-colors-github'
Plug 'srcery-colors/srcery-vim'
Plug 'sainnhe/vim-color-forest-night'
Plug 'morhetz/gruvbox'
Plug 'whatyouhide/vim-gotham'
Plug 'ghifarit53/tokyonight-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'
call plug#end()

" aparência "
colorscheme onedark
set termguicolors
syntax enable
set number
set wildignore+=blue.vim,darkblue.vim,default.vim,delek.vim,desert.vim,
      \elflord.vim,evening.vim,industry.vim,koehler.vim,morning.vim,murphy.vim,
      \pablo.vim,peachpuff.vim,ron.vim,shine.vim,slate.vim,torte.vim,zellner.vim,
      \habamax.vim,lunaperche.vim,quiet.vim,retrobox.vim,sorbet.vim,wildcharm.vim
      \zaibatsu.vim

" airline "
let g:airline_powerline_fonts = 1

" auto-completar código "
set omnifunc=syntaxcomplete#Complete
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
endfunction
augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END


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

" gerenciador de arquivos  "
inoremap <a-e> <Esc>:Lex<cr> 
nnoremap <a-e> <Esc>:Lex<cr>

" abas "
inoremap <c-t> <Esc>:tabnew<cr> 
nnoremap <c-t> <Esc>:tabnew<cr>

" terminal "
inoremap <a-t> <Esc>:terminal<cr><c-w>j<c-w>r30<c-w>_<c-w>j
nnoremap <a-t> <Esc>:terminal<cr><c-w>j<c-w>r30<c-w>_<c-w>j
inoremap <a-x> <c-w>jexit<cr>
nnoremap <a-x> <c-w>jexit<cr> 

" splits  "
inoremap <a-v> <Esc>:vs<cr> 
nnoremap <a-v> <Esc>:vs<cr>
inoremap <a-b> <Esc>:sp<cr> 
nnoremap <a-b> <Esc>:sp<cr>

" movimentação entre janelas "
inoremap <a-h> <c-w>h
nnoremap <a-h> <c-w>h
inoremap <a-j> <c-w>j
nnoremap <a-j> <c-w>j
inoremap <a-k> <c-w>k
nnoremap <a-k> <c-w>k
inoremap <a-l> <c-w>l
nnoremap <a-l> <c-w>l

" autocompletar "
inoremap <Tab> <Esc>i<c-x><c-o>
nnoremap <Tab> <Esc>i<c-x><c-o>

" instalar plugins "
nnoremap <c-s-p> <Esc>:so ~/.vimrc<cr><Esc>:PlugInstall<cr>
inoremap <c-s-p> <Esc>:so ~/.vimrc<cr><Esc>:PlugInstall<cr>

" atalhos mais naturais "
nnoremap <c-q> <Esc>:q<cr>
inoremap <c-q> <Esc>:q<cr> 
nnoremap <c-s> <Esc>:w<cr>
inoremap <c-s> <Esc>:w<cr>
