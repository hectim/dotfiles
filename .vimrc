source ~/.vim/neobundle.vim " Pull some dank plugins

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ General Config ====================

set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell!                  "No sounds
set t_vb=                       " please stop
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
" set list listchars=tab:\ \ ,trail:·

" Strip whitespace on save
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" set nowrap     "Don't wrap lines
set linebreak    "Wrap lines at convenient points

set showbreak=>\ \ \

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

" set wildmode=list:longest "displays all options but you can't tab through
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=5         "Start scrolling when we're 5 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital



set clipboard=unnamed

set number
set relativenumber

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set expandtab
set backspace=indent,eol,start

" 256 color
set term=xterm-256color
set t_Co=256        " use 256 colors

" easymotion
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>s <Plug>(easymotion-s)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


" tablularize
nmap <Leader>a&      :Tabularize /&<CR>
vmap <Leader>a&      :Tabularize /&<CR>
nmap <Leader>a=      :Tabularize /^[^=]*\zs=<CR>
vmap <Leader>a=      :Tabularize /^[^=]*\zs=<CR>
nmap <Leader>a=>     :Tabularize /=><CR>
vmap <Leader>a=>     :Tabularize /=><CR>
nmap <Leader>a:      :Tabularize /:<CR>
vmap <Leader>a:      :Tabularize /:<CR>
nmap <Leader>a::     :Tabularize /:\zs<CR>
vmap <Leader>a::     :Tabularize /:\zs<CR>
nmap <Leader>a,      :Tabularize /,<CR>
vmap <Leader>a,      :Tabularize /,<CR>
nmap <Leader>a,,     :Tabularize /,\zs<CR>
vmap <Leader>a,,     :Tabularize /,\zs<CR>
nmap <Leader>a<Bar>  :Tabularize /<Bar><CR>
vmap <Leader>a<Bar>  :Tabularize /<Bar><CR>

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='100,\"1000,:200,%,n~/.viminfo

" cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode(
set cursorline                           " Highlight current line

" gutter marks edits
let g:gitgutter_max_signs = 1000
let g:gitgutter_highlight_lines = 0
let g:gitgutter_sign_added = '🆕'
let g:gitgutter_sign_removed = '❌'
let g:gitgutter_sign_modified = '✏️ '
let g:gitgutter_sign_removed_first_line = '🥇'
let g:gitgutter_sign_modified_removed = '🛎️'
let g:gitgutter_signs = 1

" typescript
" let g:typescript_compiler_binary = 'tsc'
" let g:typescript_compiler_options = ''

" theme
colorscheme iceberg

" " Use correct language for spellcheck (cos to toggle; z= for corrections).
" set spelllang=en_gb
" " Allow <C-n> and <C-p> to use the dictionary for recommended words.
" set spell
" set complete+=kspell
" " Only spell check SpellLocal and SpellBad (use :h hl-SpellBad)
" hi clear SpellCap
" hi clear SpellRare

" augroup is used to prevent a buildup of autocmd's whenever .vimrc is sourced
augroup autocmds
  autocmd FileType go setlocal shiftwidth=2 softtabstop=0 tabstop=2 noexpandtab
  autocmd BufNewFile,BufRead *.ts,*.tsx setlocal filetype=typescript.tsx
  "autocmd! " clear the augroup. if this isn't done often vim will be slowed down
  " spell check for text files
  "  autocmd BufNewFile,BufRead *.txt,*.md,*.markdown,*.rst setlocal spell
  " press f5 and open a markdown file into google chrome.
  " Requires: https://chrome.google.com/webstore/detail/markdown-preview-plus/febilkbfcbhebfnokafefeacimjdckgl
  " Check "Allow access to file URLs in chrome://extensions
  " autocmd FileType gitcommit setlocal spell
  " Set conceallevel=0 for every filetype. Conceallevel really is dumb, I hate that ishhhhh
  set cole=0
  autocmd FileType * setl cole=0
augroup EN
