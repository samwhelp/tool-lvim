# tool-lvim

tool-lvim ([GitHub](https://github.com/samwhelp/tool-lvim))



## Install Plugin

lvim use [vim-plug](https://github.com/junegunn/vim-plug) for Plugin Manager.

to install plugin, please run


``` vim
:PlugInstall
```


## Install coc.nvim extensions

lvim use [coc.nvim](https://github.com/neoclide/coc.nvim).

to install extensions, please run

``` vim
:CocInstall extension_name
```

or run for lvim defined

``` vim
:call Lvim_InstallCocExtensions()
```

or run

``` vim
:call Lvim_InstallCocExtensions_Sync()
```

