
##This repository is hosting my Vim configuration with some basic mappings 

### [HERE](https://github.com/danrusei/dotfiles/blob/main/Vim%20Commands.md) - The list of usual VIM commands including the custom mappings

### Vim for Linux Configure

**Install vim-plug (https://github.com/junegunn/vim-plug)**

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

:PlugInstall  (to install all plugins)
```

** Install Rust language server

```
:CocInstall coc-rust-analyzer (npm or yarn may be required)
```

**Install Go language server**

* https://github.com/golang/tools/blob/master/gopls/README.md

:CocInstall coc-go  // https://github.com/josa42/coc-go

:CocConfig

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

### Vim for Vscode Configure

* ** CTRL-Shift P** and select **Preferences: Open User Settings (JSON)**
* Copy the content of [settings.json](https://github.com/danrusei/dotfiles/blob/main/vim/settings.json) file into your settings.json
* Use the vim bindings from [Vim for VsCode Mappings](https://github.com/danrusei/dotfiles/blob/main/Vim%20Commands.md)
