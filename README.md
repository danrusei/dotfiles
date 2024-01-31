## Linux Install

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

## Windows Install

settings.json file is used for VIM bindings for Vscode
