" vim-plug "
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'bling/vim-bufferline'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'

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
colorscheme dracula
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

" teclas de atalho "

" buffers "
nnoremap <c-x> <Esc>:bdel<cr>
inoremap <c-x> <Esc>:bdel<cr> 

" autocompletar "
inoremap <Tab> <Esc>i<c-x><c-o>
nnoremap <Tab> <Esc>i<c-x><c-o>

" FuzzyFinder "
inoremap <c-f> <Esc>:Files<cr>
nnoremap <c-f> <Esc>:Files<cr>
inoremap <c-b> <Esc>:Buffers<cr>
nnoremap <c-b> <Esc>:Buffers<cr>

" recarregar config "
nnoremap <c-r> <Esc>:so ~/.vimrc<cr><Esc>:PlugInstall<cr><Esc>:q
inoremap <c-r> <Esc>:so ~/.vimrc<cr><Esc>:PlugInstall<cr><Esc>:q

" etc "
nnoremap <c-q> <Esc>:wincmd q<cr>
inoremap <c-q> <Esc>:wincmd q<cr> 
nnoremap <c-s> <Esc>:w<cr>
inoremap <c-s> <Esc>:w<cr>
