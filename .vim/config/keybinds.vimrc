" leader "
let mapleader = " "
let timeoutlen=1000
set showcmd

" buffers "
map <leader>. <Esc>:bn<cr>
map <leader>, <Esc>:bp<cr>
map <leader>d <Esc>:bdel<cr>

" splits  "
map <leader>v <Esc>:vs<cr>
map <leader>m <Esc>:sp<cr>

" movimentação entre janelas "
map <leader>h <c-w>h
map <leader>j <c-w>j
map <leader>k <c-w>k
map <leader>l <c-w>l

" FuzzyFinder "
map <leader>f <Esc>:Files<cr>
map <leader>b <Esc>:Buffers<cr>

" recarregar config "
map <leader>r <Esc>:so ~/.vimrc<cr><Esc>:PlugInstall<cr><Esc>:q

" etc "
map <leader>q <Esc>:wincmd q<cr>
map <leader>s <Esc>:w<cr>

map <leader>iv <Esc>:version<cr>
