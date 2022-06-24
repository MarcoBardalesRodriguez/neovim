# Nvim

## <ins>**Prerequisitos**</ins>

- Node

- Git

- Fzf (opcional)

<br>

## <ins>**Instalacion de Neovim**</ins>

<br>

## Windows con Chocolatey

### PoweShell (Administador):

<br>

- Habilitar ejecucion de Scrips en  Powershell

        set-executionpolicy unrestricted –force

- Instalar Cocolatey

        [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

- Instalar Neovim

        choco install neovim


## Ubuntu 

### Terminal:

- Instalar Neovim

        sudo apt-get install neovim

<br>

## <ins>**Descarga de los archivos de Configuracion**</ins>

## Windows

### Git bash

- Ir a la ruta de los archivos de Neovim

        cd AppData/Local

- Renombrar carpeta 'nvim' 

        mv nvim nvim-previous-config

- Copiar repositorio de github

        git clone https://github.com/MarcoBardalesRodriguez/neovim.git

## Ubuntu

### Terminal

- Ir a la ruta de los archivos de Neovim

        cd .config

- Renombrar carpeta 'nvim' 

        mv nvim nvim-previous-config

- Copiar repositorio de github

        git clone https://github.com/MarcoBardalesRodriguez/neovim.git

<br>

## <ins>**Instalar 'Vim Plug' para los plugins**</ins>

## Windows

### PowerShell

    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

## Ubuntu

### Terminal

    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

## <ins>**Instalar plugins**</ins>

## Windows

### Git bash

- Crear carpeta para plugins

        mkdir ~/.vim
        mkdir ~/.vim/plugged

- Abrir neovim

        nvim

- Ejecutar

        :PlugInstall

- Recargar neovim

        :source %

## Ubuntu

### Terminal

- Crear carpeta para plugins

        mkdir ~/.vim
        mkdir ~/.vim/plugged

- Abrir neovim

        nvim

- Ejecutar

        :PlugInstall

- Recargar neovim

        :source %