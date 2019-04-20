# tool-lvim

tool-lvim ([GitHub](https://github.com/samwhelp/tool-lvim))


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


## Feature

On [Normal Mode](https://vimhelp.org/index.txt.html#normal-index), some key map added.

### Quick Switch

| Key | Map | Description |
| --- | --- | --- |
| `<Backspace>` | [C-w W](https://vimhelp.org/windows.txt.html#CTRL-W_W) | To Previous **Window** |
| `<Tab>` | [C-w w](https://vimhelp.org/windows.txt.html#CTRL-W_w) | To Next **Window** |
| `<Ctrl+j>` | [:bprevious](https://vimhelp.org/windows.txt.html#:bprevious)&lt;CR&gt; | To Previous **Buffer** |
| `<Ctrl+k>` | [:bnext](https://vimhelp.org/windows.txt.html#:bnext)&lt;CR&gt; | To Next **Buffer** |
| `<Ctrl+h>` | [:tabprevious](https://vimhelp.org/tabpage.txt.html#:tabprevious)&lt;CR&gt; | To Previous **TabPage** |
| `<Ctrl+l>` | [:tabnext](https://vimhelp.org/tabpage.txt.html#:tabnext)&lt;CR&gt; | To Next **TabPage** |

Please read doc/[feature](https://samwhelp.github.io/tool-svim-doc/read/en_us/#/feature) for more key binding.


## Doc

* [tool-svim-doc](https://samwhelp.github.io/tool-svim-doc)


## Core Plugin

* [tool-svim-core](https://github.com/samwhelp/tool-svim-core) : [[key binding](https://samwhelp.github.io/tool-svim-doc/read/en_us/#/feature)([中文簡介](https://samwhelp.github.io/tool-svim-doc/read/zh_tw/#/feature))] and some option setting.
* [tool-svim-colorfit](https://github.com/samwhelp/tool-svim-colorfit) : for fix color with color scheme used


## Vendor Plugin

* https://github.com/lilydjwg/fcitx.vim
* https://github.com/liuchengxu/vim-which-key
* https://github.com/liuchengxu/eleline.vim
* https://github.com/liuchengxu/vista.vim
* https://github.com/junegunn/fzf
* https://github.com/junegunn/fzf.vim
* https://github.com/scrooloose/nerdtree
* https://github.com/neoclide/coc.nvim
* https://github.com/honza/vim-snippets


## Color Scheme Plugin

* https://github.com/liuchengxu/space-vim-theme (default)
* https://github.com/sickill/vim-monokai
* https://github.com/morhetz/gruvbox
* https://github.com/joshdick/onedark.vim


## Similar Projects

* [tool-hvim](https://github.com/samwhelp/tool-hvim)

## Related Projects

* [tool-svim](https://github.com/samwhelp/tool-svim)
* [tool-mvim](https://github.com/samwhelp/tool-mvim)
* [tool-ivim](https://github.com/samwhelp/tool-ivim)
