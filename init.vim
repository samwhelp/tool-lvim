


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Base
""

set nocompatible

scriptencoding utf-8

""
""" Tail: Base
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ColorSchemePick
""

function! s:ColorSchemePick () abort

	" ## background
	set background=dark
	"set background=light


	" ## pick colorscheme
	colorscheme space_vim_theme
	"colorscheme monokai
	"colorscheme gruvbox
	"colorscheme onedark


	" ## ubuntu default colorscheme
	" $ dpkg -L vim-runtime | grep colors
	" $ ls /usr/share/vim/vim80/colors/ -1
	" $ ls /usr/share/vim/vim80/colors/ -1 | grep '\.vim' | awk -F '.' '{print $1}'
	" $ ls /usr/share/vim/vim80/colors/ -1 | grep '\.vim' | awk -F '.' '{print "\"colorscheme", $1}'

	"colorscheme blue
	"colorscheme darkblue
	"colorscheme default
	"colorscheme delek
	"colorscheme desert
	"colorscheme elflord
	"colorscheme evening
	"colorscheme industry
	"colorscheme koehler
	"colorscheme morning
	"colorscheme murphy
	"colorscheme pablo      			" *
	"colorscheme peachpuff				" *
	"colorscheme ron
	"colorscheme shine
	"colorscheme slate					" *
	"colorscheme torte
	"colorscheme zellner

endfunction


""
""" Tail: ColorSchemePick
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ColorSchemePlug
""


function! s:ColorSchemePlug () abort

	" ## https://www.jianshu.com/p/aadce0fe9649
	" ## https://github.com/liuchengxu/space-vim-theme
	Plug 'liuchengxu/space-vim-theme'

	" ## https://github.com/sickill/vim-monokai
	Plug 'sickill/vim-monokai'

	" ## https://github.com/morhetz/gruvbox
	Plug 'morhetz/gruvbox'

	" ## https://github.com/joshdick/onedark.vim
	Plug 'joshdick/onedark.vim'

endfunction

""
""" Tail: ColorSchemePlug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugEnhance
""

function! s:PlugEnhance () abort

	" Add extra plugin here
	" ## https://github.com/scrooloose/nerdtree
	"Plug 'scrooloose/nerdtree'





endfunction

""
""" Tail: PlugEnhance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfEnhance
""

function! s:ConfEnhance () abort



endfunction

""
""" Tail: ConfEnhance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugCoc
""

function! s:PlugCoc () abort

	" ## coc.nvim
	" https://github.com/neoclide/coc.nvim
	" https://www.npmjs.com/package/coc.nvim
	Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

	"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}


endfunction

""
""" Tail: PlugCoc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfCoc
""

function! s:ConfCoc () abort

	inoremap <C-L> <Right>

	"" https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources
	"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"



	"inoremap <silent><expr> <TAB>
	"	\ pumvisible() ? "\<C-n>" :
	"	\ <SID>check_back_space() ? "\<TAB>" :
	"	\ coc#refresh()



endfunction


"" use <tab> for trigger completion and navigate to next complete item
"function! s:check_back_space() abort
"	let col = col('.') - 1
"	return !col || getline('.')[col - 1]  =~ '\s'
"endfunction




""
""" Tail: ConfCoc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Lvim_Coc_InstallExtensions
""

function! Lvim_Coc_InstallExtensions () abort

	" https://www.npmjs.com/package/coc.nvim

	" for json.
	CocInstall coc-json

	" for javascript and typescript.
	CocInstall coc-tsserver

	" for html, handlebars and razor.
	CocInstall coc-html

	" for css, scss and less.
	CocInstall coc-css

	" for vue, use vetur.
	CocInstall coc-vetur

	" for php, use intelephense-docs.
	CocInstall coc-phpls

	" for java, use eclipse.jdt.ls.
	CocInstall coc-java

	" for ruby, use solargraph.
	CocInstall coc-solargraph

	" for rust, use Rust Language Server
	CocInstall coc-rls

	" for yaml
	CocInstall coc-yaml

	" for python, extension forked from vscode-python.
	CocInstall coc-python

	" provide default document symbol highlight and colors support.
	CocInstall coc-highlight

	" provide emmet suggest in completion list.
	CocInstall coc-emmet

	" provide snippets solution.
	CocInstall coc-snippets

endfunction


function! Lvim_Coc_InstallExtensions_Sync () abort

	" https://www.npmjs.com/package/coc.nvim

	" for json.
	CocInstall -sync coc-json

	" for javascript and typescript.
	CocInstall -sync coc-tsserver

	" for html, handlebars and razor.
	CocInstall -sync coc-html

	" for css, scss and less.
	CocInstall -sync coc-css

	" for vue, use vetur.
	CocInstall -sync coc-vetur

	" for php, use intelephense-docs.
	CocInstall -sync coc-phpls

	" for java, use eclipse.jdt.ls.
	CocInstall -sync coc-java

	" for ruby, use solargraph.
	CocInstall -sync coc-solargraph

	" for rust, use Rust Language Server
	CocInstall -sync coc-rls

	" for yaml
	CocInstall -sync coc-yaml

	" for python, extension forked from vscode-python.
	CocInstall -sync coc-python

	" provide default document symbol highlight and colors support.
	CocInstall -sync coc-highlight

	" provide emmet suggest in completion list.
	CocInstall -sync coc-emmet

	" provide snippets solution.
	CocInstall -sync coc-snippets

endfunction

""
""" Tail: Lvim_Coc_InstallExtensions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugCoding_Honza_VimSnippets
""

function! s:PlugCoding_Honza_VimSnippets () abort

	" ## vim-snippets
	" https://github.com/honza/vim-snippets
	Plug 'honza/vim-snippets'


endfunction

""
""" Tail: PlugCoding_Honza_VimSnippets
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfCoding_Honza_VimSnippets
""

function! s:ConfCoding_Honza_VimSnippets () abort




endfunction

""
""" Tail: ConfCoding_Honza_VimSnippets
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugEleLine
""

function! s:PlugEleLine () abort

	" ## eleline
	" https://github.com/liuchengxu/eleline.vim
	Plug 'liuchengxu/eleline.vim'


endfunction

""
""" Tail: PlugEleLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfEleLine
""

function! s:ConfEleLine () abort




endfunction

""
""" Tail: ConfEleLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugFcitx
""

function! s:PlugFcitx () abort

	" ## https://github.com/lilydjwg/fcitx.vim
	Plug 'lilydjwg/fcitx.vim'


endfunction

""
""" Tail: PlugFcitx
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfFcitx
""

function! s:ConfFcitx () abort

	" :help 'ttimeoutlen'
	set ttimeoutlen=100


endfunction

""
""" Tail: ConfFcitx
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugFm_Ranger
""

function! s:PlugFm_Ranger () abort

	" ## ranger.vim
	" https://ranger.github.io/
	" https://github.com/ranger/ranger
	" https://github.com/francoiscabrol/ranger.vim
	Plug 'francoiscabrol/ranger.vim'
	Plug 'rbgrouleff/bclose.vim'

	" Notice
	" Install ranger first
	" $ sudo apt-get install ranger

endfunction

""
""" Tail: PlugFm_Ranger
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfFm_Ranger
""

function! s:ConfFm_Ranger () abort


	nnoremap <Space>er :Ranger<CR>
	"nnoremap ,f :Ranger<CR>


endfunction

""
""" Tail: ConfFm_Ranger
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugFzf
""

function! s:PlugFzf () abort

	" ## fzf
	" https://github.com/junegunn/fzf
	" https://github.com/junegunn/fzf.vim
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'


endfunction

""
""" Tail: PlugFzf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfFzf
""

function! s:ConfFzf () abort

	" https://github.com/junegunn/fzf.vim#usage
	" Mapping selecting mappings
	"nmap <leader><tab> <plug>(fzf-maps-n)
	"xmap <leader><tab> <plug>(fzf-maps-x)
	"omap <leader><tab> <plug>(fzf-maps-o)
	"nmap <Space>? <plug>(fzf-maps-n)


	" https://github.com/junegunn/fzf.vim#commands
	nnoremap <Space>?m :Maps<CR>
	nnoremap <Space>?? :Helptags<CR>
	nnoremap <Space>?c :Commands<CR>

	nnoremap <Space>ff :Files<CR>
	nnoremap <Space>f? :Files<Space>
	nnoremap <Space>fm :Marks<CR>
	nnoremap <Space>fb :BLines<CR>
	nnoremap <Space>fl :Lines<CR>
	nnoremap <Space>fa :Ag<CR>

	nnoremap <Space>tc :Colors<CR>
	nnoremap <Space>tw :Windows<CR>

	nnoremap <Space>fhh :History<CR>
	nnoremap <Space>fhc :History:<CR>
	nnoremap <Space>fhs :History/<CR>

	nnoremap <Space>fgc :BCommits<CR>
	nnoremap <Space>fgf :GFiles?<CR>
	nnoremap <Space>fgl :GFiles<CR>

endfunction

""
""" Tail: ConfFzf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugLvim
""

function! s:PlugLvim () abort

	" ## Lvim
	" https://github.com/samwhelp/tool-svim-core
	Plug 'samwhelp/tool-svim-core'

	" https://github.com/samwhelp/tool-svim-colorfit
	Plug 'samwhelp/tool-svim-colorfit'

	" https://github.com/samwhelp/tool-lvim-core
	"Plug 'samwhelp/tool-lvim-core'


endfunction

""
""" Tail: PlugLvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfLvim
""

function! s:ConfLvim () abort



endfunction

""
""" Tail: ConfLvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugNerdTree
""

function! s:PlugNerdTree () abort

	" ## https://github.com/scrooloose/nerdtree
	Plug 'scrooloose/nerdtree'


endfunction

""
""" Tail: PlugNerdTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfNerdTree
""

function! s:ConfNerdTree () abort

	nnoremap ,t :NERDTreeToggle<cr>

endfunction

""
""" Tail: ConfNerdTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugVista
""

function! s:PlugVista () abort

	" ## vista.vim
	" https://github.com/liuchengxu/vista.vim
	Plug 'liuchengxu/vista.vim'


endfunction

""
""" Tail: PlugVista
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfVista
""

function! s:ConfVista () abort

	" https://github.com/liuchengxu/vista.vim

	nnoremap <Space>vv :Vista!!<CR>
	nnoremap <Space>vx :Vista!<CR>
	nnoremap <Space>vs :Vista show<CR>
	nnoremap <Space>vi :Vista info<CR>

if has('nvim')
	nnoremap <Space>vii :Vista info+<CR>
endif


	nnoremap <Space>vm :Vista toc<CR>
	nnoremap <Space>vc :Vista coc<CR>
	nnoremap <Space>vt :Vista ctags<CR>
	nnoremap <Space>vf :Vista finder<CR>
	nnoremap <Space>vgc :Vista finder coc<CR>
	nnoremap <Space>vgt :Vista finder ctags<CR>



endfunction

""
""" Tail: ConfVista
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugWhichKey
""

function! s:PlugWhichKey () abort

	" ## WhichKey
	" https://www.jianshu.com/p/e47f7ec27cea
	" https://github.com/liuchengxu/vim-which-key

	Plug 'liuchengxu/vim-which-key'
	" On-demand lazy load
	"Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
	" To register the descriptions when using the on-demand load feature, use the autocmd hook to call which#register(),
	" e.g., register for the Space key(see more configuration details in the following sections):
	" autocmd! User vim-which-key call which#register('<Space>', 'g:which_key_map')


endfunction

""
""" Tail: PlugWhichKey
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfWhichKey
""

function! s:ConfWhichKey () abort

	" https://www.jianshu.com/p/e47f7ec27cea
	" https://github.com/liuchengxu/space-vim-theme

	" ## WhichKey Show
	nnoremap <silent> , :<c-u>WhichKey  ','<CR>
	nnoremap <silent> t :<c-u>WhichKey  't'<CR>
	nnoremap <silent> <Bslash> :<c-u>WhichKey  '<Bslash>'<CR>
	nnoremap <silent> <Space> :<c-u>WhichKey  '<Space>'<CR>

endfunction

""
""" Tail: ConfWhichKey
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PackPlugBase
""

function! s:PackPlugBase () abort

	call s:PlugCoc()
	call s:PlugCoding_Honza_VimSnippets()
	call s:PlugEleLine()
	call s:PlugFcitx()
	call s:PlugFm_Ranger()
	call s:PlugFzf()
	call s:PlugLvim()
	call s:PlugNerdTree()
	call s:PlugVista()
	call s:PlugWhichKey()

endfunction

""
""" Tail: PackPlugBase
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PackConfBase
""

function! s:PackConfBase () abort

	call s:ConfCoc()
	call s:ConfCoding_Honza_VimSnippets()
	call s:ConfEleLine()
	call s:ConfFcitx()
	call s:ConfFm_Ranger()
	call s:ConfFzf()
	call s:ConfLvim()
	call s:ConfNerdTree()
	call s:ConfVista()
	call s:ConfWhichKey()

endfunction

""
""" Tail: PackConfBase
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfigInControl
""

function! s:ConfigInControl () abort

	call s:PackConfBase()
	call s:ConfEnhance()

endfunction


""
""" Tail: ConfigInControl
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PluginInControl
""

function! s:PluginInControl () abort

	call s:PackPlugBase()
	call s:PlugEnhance()

	call s:ColorSchemePlug()

endfunction


""
""" Tail: PluginInControl
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PluginManager
""

function! s:PluginManager (dir_path) abort

	" :help internal-variables

	let l:site_rtp_dir_path = '~/.cache/lvim/site'
	"let &runtimepath .= ',' . l:site_rtp_dir_path
	let &runtimepath = l:site_rtp_dir_path . ',' . &runtimepath


	try
		" https://github.com/junegunn/vim-plug/
		" Specify a directory for plugins
		" - For Neovim: ~/.local/share/nvim/plugged
		" - Avoid using standard Vim directory names like 'plugin'
		call plug#begin(a:dir_path)
	catch
		echomsg ' '
		echomsg '+NotInstall: https://github.com/junegunn/vim-plug/'
		echomsg '    # Please install first:'
		echomsg '$ curl -fLo ~/.cache/lvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
		return
	endtry

	call s:PluginInControl()

	" Initialize plugin system
	call plug#end()

endfunction

""
""" Tail: PluginManager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ColorSchemeUse
""


function! s:ColorSchemeUse () abort

	try
		call s:ColorSchemePick()
	catch
		" echomsg ' '
		" echomsg '+NotInstall ColorScheme:'
		" echomsg '    # Please install first:'
		" echomsg ':PlugInstall'

		echohl WarningMsg
		echomsg 'ColorScheme is not installed! Please run :PlugInstall'
		echohl None

		return
	endtry

endfunction


function! s:ColorSchemeUseOnVimEnter() abort

	augroup ColorSchemeUse
		autocmd!
		autocmd VimEnter * call s:ColorSchemeUse()
	augroup END

endfunction


""
""" Tail: ColorSchemeUse
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Main
""

function! s:Main () abort

	call s:PluginManager('~/.cache/lvim/plug')

	call s:ColorSchemeUse()

	"call s:ColorSchemeUseOnVimEnter()

	call s:ConfigInControl()

endfunction

call s:Main()

""
""" Tail: Main
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Note
""


" $ vim -nNRe -u vimrc -c 'try | :PlugInstall | endtry'
" $ vim -nNRe -u vimrc -c 'try | :PlugInstall | finally | :qa! | endtry'
" $ vim -nNRe -u vimrc -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
" $ vim -nNRe -u vim-plug-install.vim

" function! s:TryInstallPlugin () abort
" 	try
" 		PlugInstall
" 	catch
" 		echomsg '!PlugInstall Error!'
" 	finally
" 		qa!
" 	endtry
" endfunction


""
""" Tail: Note
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

