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
NeoBundle 'tpope/vim-fugitive'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on
filetype plugin on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
