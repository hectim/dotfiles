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
NeoBundle 'ntpeters/vim-better-whitespace' " whitespace

" Node
NeoBundle 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}

" Javascript
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'

" Go
NeoBundle 'fatih/vim-go', {'autoload':{'filetypes':['go']}}

" Typescript
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'ianks/vim-tsx'

" Other
NeoBundle 'godlygeek/tabular'

" Utils
NeoBundle 'luochen1990/rainbow'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-repeat'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on
filetype plugin on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
