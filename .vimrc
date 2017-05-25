" Disable VI commands - not sure, something related to VI
set nocompatible

" Enable syntax 
syntax enable
let python_highlight_all=1

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

"SNIPPETS
"nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

"Python PEP8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

" UTF8
set encoding=utf-8

" Line numbering and relative numbering
set number
set relativenumber

" MAKE FILE PYTHON
au FileType python set makeprg=python\ %

" DISABLING
" Arrow keys, PageUp and Down
map <up> <nop> 
map <down> <nop> 
map <right> <nop> 
map <left> <nop> 
imap <up> <nop> 
imap <down> <nop> 
imap <right> <nop> 
imap <left> <nop> 
map <pageup> <nop>
map <pagedown> <nop>
imap <pageup> <nop>
imap <pagedown> <nop>
