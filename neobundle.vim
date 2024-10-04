"NeoBundle Scripts-----------------------------
if has('vim_starting')
    if &compatible
        set nocompatible               " Be iMproved
    endif

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Core plugins
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'nathanaelkane/vim-indent-guides'
  let g:indent_guides_enable_on_vim_startup = 1 " enable on startup
  "let g:indent_guides_auto_colors = 0
  "autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black ctermbg=0 " black
  "autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=black ctermbg=8 " darkgray
NeoBundle 'itchyny/lightline.vim' " colorscheme
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'ntpeters/vim-better-whitespace' " whitespace
  let g:better_whitespace_enabled=1
  let g:strip_whitespace_on_save=1

" editor config for syntax
NeoBundle 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*'] " makes fugitive work with this plugin

" Node
NeoBundle 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}

" Javascript
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'maksimr/vim-jsbeautify'

" Go
" NeoBundle 'fatih/vim-go', {'autoload':{'filetypes':['go']}, 'do': ':GoUpdateBinaries'}

" Typescript
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'ianks/vim-tsx'

" Linter
NeoBundle 'w0rp/ale'

" Other
NeoBundle 'godlygeek/tabular'

" Utils -- Tim Pope you delicious delicious man
NeoBundle 'luochen1990/rainbow'
NeoBundle 'tpope/vim-commentary' " gc for commenting sections
NeoBundle 'tpope/vim-repeat'     " smarter dot command
NeoBundle 'tpope/vim-fugitive'   " git wrapper in vim
NeoBundle 'shumphrey/fugitive-gitlab.vim'    " :GBrowse capability for gitlab
NeoBundle 'tpope/vim-surround'   " cs/ds quote manipulation
NeoBundle 'tpope/vim-sleuth'     " detect indent
NeoBundle 'tpope/vim-abolish'    " case preserving replace + other shit
let g:fugitive_gitlab_domains = ['http://git', 'http://git.tcncloud.net'] " for private gitlab domains

" Log
NeoBundle 'dzeban/vim-log-syntax'
NeoBundle 'vim-scripts/AnsiEsc.vim'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on
filetype plugin on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
