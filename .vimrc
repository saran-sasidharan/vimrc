" Disable VI commands - not sure, something related to VI
set nocompatible

" Enable syntax 
syntax enable

" Enable plugins (for netrw)
filetype plugin on

" FINDING FILES:

" Search down into subfolders
" Provides tab completion for file related tasks
set path+=**

" Display matching files while tab complete
set wildmenu

