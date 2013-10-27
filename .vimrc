execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme torte

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar

" Ctrl-C, Ctrl-V option for copy/paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

nmap <F2> :e.<CR>
imap <F2> <ESC>:e.<CR>
nmap <S-F2> :Ex<CR>
imap <S-F2> <ESC>:Ex<CR>

nmap <F7> <Esc>:bp<CR>
nmap <F8> <Esc>:bn<CR>

set wildmenu
set mouse=a
if has('gui_running')
  set guifont=Terminus\ 12
endif

au BufNewFile,BufRead *.hjs set filetype=handlebars
