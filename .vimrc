" vim-plug "
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'bling/vim-bufferline'

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
      \habamax.vim,lunaperche.vim,quiet.vim,retrobox.vim,sorbet.vim,wildcharm.vim,
      \zaibatsu.vim

" airline "
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
  autocmd VimEnter *
    \ let &statusline='%{bufferline#refresh_status()}'
      \ .bufferline#get_status_string()

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

" buffers "
inoremap <a-.> <Esc>:bn<cr> 
nnoremap <a-.> <Esc>:bn<cr>
inoremap <a-,> <Esc>:bp<cr> 
nnoremap <a-,> <Esc>:bp<cr>
nnoremap <a-d> <Esc>:bdel<cr>
inoremap <a-d> <Esc>:bdel<cr> 

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

" recarregar config "
nnoremap <a-r> <Esc>:so ~/.vimrc<cr><Esc>:PlugInstall<cr><Esc>:q
inoremap <a-r> <Esc>:so ~/.vimrc<cr><Esc>:PlugInstall<cr><Esc>:q

" etc "
nnoremap <a-q> <Esc>:wincmd q<cr>
inoremap <a-q> <Esc>:wincmd q<cr> 
nnoremap <a-s> <Esc>:w<cr>
inoremap <a-s> <Esc>:w<cr>
