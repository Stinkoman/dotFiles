set nocompatible            
set t_Co=256
set relativenumber
set number
filetype off                

syntax enable		" just to be sure

set tabstop=2		" yes i'm a horrible person
set softtabstop=2	" ^
set expandtab		" but not a dumb horrible person

"visuals
colorscheme sidonia  " available at- https://github.com/AlessandroYorba/Sidonia
hi Normal ctermbg=none "reset back to inheriting term colors from the $TERM
hi NonText ctermbg=none
set cursorline
set cursorcolumn
filetype indent on
set wildmenu
set nowrap
:hi CursorColumn   cterm=NONE ctermbg=NONE ctermfg=cyan guibg=NONE guifg=cyan
:hi CursorLine     cterm=NONE ctermbg=NONE ctermfg=blue guibg=NONE guifg=blue

"macro semantics
set lazyredraw

"matching
set showmatch
set incsearch
set hlsearch

"folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

"backups go to tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"statusline
set laststatus=2
set statusline=%f

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
call vundle#end()    
filetype plugin indent on
