# tool-lvim

tool-lvim ([GitHub](https://github.com/samwhelp/tool-lvim))


## Installer

* [vimrc-get](https://github.com/samwhelp/note-about-vim/tree/gh-pages/_demo/project/vimrc-profile/vimrc-get)

``` sh
$ vimrc-get lvim
```

## Doc

* [tool-lvim-doc](https://samwhelp.github.io/tool-lvim-doc) ([GitHub](https://github.com/samwhelp/tool-lvim-doc))
* note-about-vim / [lvim](https://samwhelp.github.io/note-about-vim/read/project/lvim.html)


## Keybind

* [en_us](https://samwhelp.github.io/tool-lvim-doc/read/en_us/feature/keybind.html)
* [zh_tw](https://samwhelp.github.io/tool-lvim-doc/read/zh_tw/feature/keybind.html)


## Plugin

* [en_us](https://samwhelp.github.io/tool-lvim-doc/read/en_us/feature/plugin.html)
* [zh_tw](https://samwhelp.github.io/tool-lvim-doc/read/zh_tw/feature/plugin.html)


## Related Projects

* [tool-lvim-gen](https://github.com/samwhelp/tool-lvim-gen)


## Prototype Projects

* [hvim](https://github.com/samwhelp/note-about-vim/tree/gh-pages/_demo/prototype/hvim)


## Similar Projects

* [tool-hvim](https://github.com/samwhelp/tool-hvim)

## Like Projects

* [tool-svim](https://github.com/samwhelp/tool-svim)
* [tool-mvim](https://github.com/samwhelp/tool-mvim)
* [tool-ivim](https://github.com/samwhelp/tool-ivim)

## Clone Command

``` sh
git clone https://github.com/samwhelp/tool-lvim
git clone https://github.com/samwhelp/tool-lvim-gen
git clone https://github.com/samwhelp/tool-lvim-doc
```








## Install neovim (nvim)

* Installing Neovim / [Ubuntu](https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu)


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
:call Lvim_Coc_InstallExtensions()
```

or run

``` vim
:call Lvim_Coc_InstallExtensions_Sync()
```
