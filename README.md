
## This repository is hosting my Vim configuration with some basic bindings

### [HERE](https://github.com/danrusei/dotfiles/blob/main/Vim%20Commands.md) - The list of usual VIM commands including my custom bindings

## Configure Vim for Vscode 

* ** CTRL-Shift P** and select **Preferences: Open User Settings (JSON)**
* Copy the content of [settings.json](https://github.com/danrusei/dotfiles/blob/main/vim/settings.json) file into your settings.json
* Use the vim bindings from [Vim for VsCode Bindings](https://github.com/danrusei/dotfiles/blob/main/Vim%20Commands.md)

## Configure Vim on Linux 

1. **Install vim-plug (https://github.com/junegunn/vim-plug)**

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

2. Copy the [.vimrc file](https://github.com/danrusei/dotfiles/blob/main/vim/.vimrc) into your home directory

3. The following  plugins are installed (added already to the config):
    * Plug 'scrooloose/nerdtree' - https://vimawesome.com/plugin/nerdtree-red
    * Plug 'tpope/vim-fugitive' - https://vimawesome.com/plugin/fugitive-vim
    * Plug 'machakann/vim-highlightedyank' - https://vimawesome.com/plugin/vim-highlightedyank
    * Plug 'tpope/vim-commentary' - https://vimawesome.com/plugin/commentary-vim
    * Plug 'junegunn/fzf.vim' - https://vimawesome.com/plugin/fzf
    * Plug 'neoclide/coc.nvim', {'branch': 'release'} - https://vimawesome.com/plugin/coc-nvim //used mainly to install language servers for GO & Rust

In order to install them apply:

```
:PlugInstall
```
4. **Install Rust language server**

```
:CocInstall coc-rust-analyzer (npm or yarn may be required)
```

**Install Go language server**

Some resources:
* https://github.com/golang/tools/blob/master/gopls/README.md
* https://github.com/josa42/coc-go

```
:CocInstall coc-go  
```

Configure Go LSP:

```
:CocConfig
```
```
  "languageserver": {
    "go": {
      "command": "gopls",
      "rootPatterns": ["go.work", "go.mod", ".vim/", ".git/", ".hg/"],
      "filetypes": ["go"],
      "initializationOptions": {
        "usePlaceholders": true
      }
    }
  }
```

---
***
___
