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

" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0 		" disable annoying banner
let g:netrw_browse_split=4 	" open in prior window
let g:netrw_altv=1 		" open splits to right
let g:netrw_liststyle=3		" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

