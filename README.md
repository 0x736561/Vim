# Minhas dotfiles do Vim
 
Eu não tenho uma configuração muito complexa, mas ela tem suas
particularidades.

Tenho várias teclas de atalho configuradas para me ajudarem no meu workflow,
futuramente irei lista-las aqui. Nessa configuração também tem muitas
colorschemes, sinta-se livre para experimenta-las.

# Na primeira vez que executar o Vim, digite :PlugInstall

As teclas de atalho que eu adicionei muito provavelmente são um crime contra a
humanidade e com toda certeza são uma ofensa maior do que ser broxa aos 12 para
a comunidade do Vim, __mas__, ainda assim eu as fiz.

Todas usam a tecla Leader como modificador.

_leader = Espaço_

- Leader-f ........... Procurar arquivos (fzf)
- Leader-b ........... Procurar buffers (fzf)
- Leader-. ........... Buffer à esquerda
- Leader-, ........... Buffer à direita
- Leader-q ........... Fechar janela
- Leader-x ........... Fechar buffer
- Leader-s ........... Salvar
- Leader-r ........... Recarregar configuração
- Leader-h/j/k/l ..... Alterna entre as janelas
- Leader-v ........... Split vertical
- Leader-b ........... Split horizontal

# As configurações estão em arquivos separados

Cada configuração está separada em um arquivo próprio, todos eles estão na
pasta `config` ($HOME/.vim/config).
