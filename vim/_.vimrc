"BASICS
"------

"set autoindent
set autoindent

"disable compatibility with vi which can cause unexpected issues.
set nocompatible

"turn off ol' regex engine (slow)
set re=0

"mouse support
set mouse=a

"delay between keys for keycodes (not mapping), makes ESC faster when exiting
"to normal mode
set ttimeoutlen=50

"redraw time for syntax highlighting; increased for long files
set redrawtime=5000

" set the backspace to delete normally
set backspace=indent,eol,start

"enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

"enable plugins and load plugin for the detected file type.
filetype plugin on

"load an indent file for the detected file type
filetype indent on

"foldmethod
"set foldmethod=syntax
set foldmethod=indent
set nofoldenable

"commands to save in history
set history=1000

"when searching, ignore capital letters; 'set smartcase' for re-enabling it
set ignorecase

"highlight search
set hlsearch

"show command on bottom right
set showcmd

"quicklist opens files in new tab / existing if file is already opened
set switchbuf+=usetab,newtab

"set customtheme
" colorscheme inkpot_albert
colorscheme molokai_albert

set colorcolumn=120

# autochange to dir when opening a file
set autochdir

"CLIPBOARD (must be compiled with clipboard support)
"---------

" set default clipboard (¨+y to copy)
set clipboard=unnamedplus

"LINE NUMBERS
"------------

"line number and relative line number both enabled
set number
set relativenumber

"disable relative number lines when in Insert mode, otherwise enable it (and have hybrid mode)
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

"CURSOR
"------
"
"enable cursor line (also cursorcolumn available)
set cursorline
"set cursorcolumn

"STATUS BAR
"----------

" (ignored if vim-airline plugin is ON)

"clear status line when vimrc is reloaded
set statusline=

"status line left side
set statusline+=\ %F\ %M\ %Y\ %R

"use a divider to separate the left side from the right side
set statusline+=%=

"status line right side
set statusline+=\ a\ %b\ \-\ h\ 0x%B\ \|\ r\ %l\ c\ %c\ \|\ %l\/%L

"show the status on the second to last line
set laststatus=2

"SYNTAX
"------

syntax on

"use tabs, not spaces (4 chars per tab)
set noexpandtab
set tabstop=4
set shiftwidth=4

"do not use tabs (4 length, smarttab to use it only on new lines)
"expandtab for whitespaces use only and not tabs
"set tabstop and softtabstop different than the 4-length spaces
"set shiftwidth=4 smarttab
"set expandtab
"set tabstop=8 softtabstop=0

"do not wrap text
set nowrap

"enable auto completion menu after pressing TAB.
set wildmenu

"make wildmenu behave like similar to Bash completion
set wildmode=list:longest

"there are certain files that we would never want to edit with Vim.
"wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" AUTOCOMPLETE STUFF
" ------------------

set autocomplete
set complete=.^5,w^5,b^5,u^5
set completeopt=popup

" Enable Omnicomplete features
" set completeopt=longest,menuone
set omnifunc=syntaxcomplete#Complete

"function! OpenCompletion()
"    if !pumvisible() && ((v:char >= 'a' && v:char <= 'z') || (v:char >= 'A' && v:char <= 'Z'))
"        call feedkeys("\<C-x>\<C-o>", "n")
"    endif
"endfunction
"
"autocmd InsertCharPre * call OpenCompletion()

" SESSION
" -------

" Automatically save the current session whenever vim is closed
autocmd VimLeave * mksession! ~/.vim/shutdown_session.vim

" <F7> restores that 'shutdown session'
noremap <F7> :source ~/.vim/shutdown_session.vim<CR>

" If you really want to, this next line should restore the shutdown session 
" automatically, whenever you start vim.  (Commented out for now, in case 
" somebody just copy/pastes this whole block)
" 
" autocmd VimEnter source ~/.vim/shutdown_session.vim<CR>

" manually save a session with <F5>
noremap <F5> :mksession! ~/.vim/manual_session.vim<cr>

" recall the manually saved session with <F6>
noremap <F6> :source ~/.vim/manual_session.vim<cr>

" PLUGINS STUFF
" -------------

" pear-tree
let g:pear_tree_repeatable_expand=0

" vim-airline
let g:airline#extensions#whitespace#enabled=0




