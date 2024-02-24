# Minhas dotfiles do Vim
 
Eu não tenho uma configuração muito complexa, mas ela tem suas
particularidades.

Tenho várias teclas de atalho configuradas para me ajudarem no meu workflow,
futuramente irei lista-las aqui. Nessa configuração também tem muitas
colorschemes, sinta-se livre para experimenta-las.

### Instalação
Para _"instalar"_ essa configuração você precisa adicionar no seu
.bashrc/.bash_profile:  
- export GVIMINIT='let $MYGVIMRC="$XDG_CONFIG_HOME/vim/gvimrc" | source $MYGVIMRC'  
- export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'  
E copiar o diretório dentro de ".config" para ~/.config.  
__Na primeira vez que executar o Vim, digite :PlugInstall__

As teclas de atalho que eu adicionei muito provavelmente são um crime contra a
humanidade e com toda certeza são uma ofensa maior do que ser broxa aos 12 para
a comunidade do Vim, __mas__, ainda assim eu as fiz.

Todas usam a tecla Leader como modificador.

_leader = Espaço_

- leader-n ........... Explorador de arquivos (Netrw)
- leader-f ........... Procurar arquivos (fzf)
- leader-b ........... Procurar buffers (fzf)
- leader-. ........... Buffer à esquerda
- leader-, ........... Buffer à direita
- leader-q ........... Fechar janela
- leader-x ........... Fechar buffer
- leader-s ........... Salvar
- leader-r ........... Recarregar configuração
- leader-h/j/k/l ..... Alterna entre as janelas
- leader-v ........... Split vertical
- leader-m ........... Split horizontal
- leader-t ........... Terminal
- leader-c ........... Paletas de cores
  - d ................ Dracula
  - g ................ Gruvbox
  - o ................ Onedark
  - m ................ Monokai
  - e ................ Everforest
  - s ................ Srcery
  - n ................ Nord

### Organização de arquivos
As configurações estão em arquivos separados, sendo eles  
- variables.vimrc  
- keybinds.vimrc  
- plugins.vimrc  
- look.vimrc  
- color.vimrc  
Todos eles estão no diretório "config", dentro do diretório "vim".

