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
NeoBundle 'Yggdroot/indentLine'
  " vertical lines
  let g:indentLine_char = '|'

NeoBundle 'itchyny/lightline.vim' " colorscheme
NeoBundle 'airblade/vim-gitgutter'

" Node
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}

" Go
NeoBundleLazy 'fatih/vim-go', {'autoload':{'filetypes':['go']}}

" Other
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'godlygeek/tabular'

" Utils
NeoBundle 'luochen1990/rainbow'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'Shougo/vimproc.vim'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on
filetype plugin on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
