# arquivos
Repositorio para anotações, arquivos e tudo que devera ser mantido guardado em nuvem no meu PC

d.j@gmail.com


## LOCAIS DE CONFIGURACAO / INSTALACAO DO NEOVIM

|        Caminho        |               Funcao               |
| --------------------- | ---------------------------------- |
| ~/.config/nvim        | - Diretorio de configuração        |
| ~/.local/share/nvim   | - Diretorio de data                |
| /tmp/nvim.user/xxx    | - Diretorio temporario de execução |
| ~/.local/state        | - Diretorio de estado              |

<br> <br>


## Indice

1. [Instalacao do neovim](#instalacao-do-neovim) 
2. [Estrutura de pastas](#estrutura-de-pastas)
3. [Configuracoes do vim](#configuracoes-do-vim)
4. [Instalando plugins](#instalando-plugins)

---------

# Instalacao do neovim

<p Style="text-align: justify;">Para instalação, já começamos com um problema. O Neovim que instalamos pelo apt do Debian é desatualizado. Então, segui a alternativa de instalar pelo Snap, que era bem mais atualizado. No entanto, ele tinha alguns problemas com permissões de arquivo.</p>


Para contornar esse problema resolvi fazer o download pelo [link do neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
Ou pelo comando:

```bash
cd ~/Downloads && wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
```

Após baixar o nvim-linux64.tar.gz descompactei o arquivo e coloquei a pasta descompactada no caminho /opt/nvim/

```bash
tar -xzvf ~/Downloads/nvim-linux64.tar.gz && sudo mv ~/Downloads/nvim-linux64/ /opt/nvim/ 
```

Depois criei um link executavel e coloquei dentro do /bin/ Assim fazendo com que o nvim fique nas variaveis de ambiente

```bash
sudo ln -s /opt/nvim/bin/nvim /usr/bin/nvim
```

Comando completo para facilitar (note que voce deve adicionar a senha do seu usuario no comando para continuar)
```bash
cd ~/Downloads && wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz && tar -xzvf ~/Downloads/nvim-linux64.tar.gz && echo senha | sudo -S mv ~/Downloads/nvim-linux64/ /opt/nvim/ && echo senha | sudo -S ln -s /opt/nvim/bin/nvim /usr/bin/nvim
```

---------



