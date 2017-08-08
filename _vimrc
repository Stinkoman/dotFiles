source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

if has("gui_running")
  " Set a nicer font.
  set guifont=ProggyCleanTT:h18:cDEFAULT
  " Hide the toolbar.
  set guioptions-=T
endif

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
colorscheme lain	"dokoniittatte
hi Normal ctermbg=none "reset back to inheriting term colors from the $TERM
hi NonText ctermbg=none
set cursorline
set cursorcolumn
filetype indent on
set wildmenu
set nowrap
:hi CursorColumn  	term=reverse ctermbg=236 guibg=#222E30 guisp=#222E30
:hi CursorLine 		term=underline ctermbg=236 guibg=#222E30 guisp=#222E30

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
