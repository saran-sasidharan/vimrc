" Disable VI commands - not sure, something related to VI
set nocompatible

" Enable plugins (for netrw)
filetype plugin on

" ENABLE FOLDING
set foldmethod=indent
set foldlevel=99

" Enable syntax 
syntax enable
let python_highlight_all=1

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
autocmd BufNewFile,BufRead *.py call SetPyOptions()
function SetPyOptions()
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set textwidth=80
  set expandtab
  set autoindent
  set fileformat=unix
endfunction 

" UTF8
set encoding=utf-8

" Line numbering and relative numbering
set number
set relativenumber

" MAKE FILE PYTHON
au FileType python set makeprg=python\ %

" DISABLING
" Arrow keys, PageUp and Down
noremap <up> <nop> 
noremap <down> <nop> 
noremap <right> <nop> 
noremap <left> <nop> 
inoremap <up> <nop> 
inoremap <down> <nop> 
inoremap <right> <nop> 
inoremap <left> <nop> 
noremap <pageup> <nop>
noremap <pagedown> <nop>
inoremap <pageup> <nop>
inoremap <pagedown> <nop>

" Highlight search
:set hlsearch
