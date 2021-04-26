set nocp
set nu

set t_Co=256
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

set ls=2

set nobackup
set noundofile

filetype indent off

call plug#begin('~/.vim/plugged')
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-rails'
	Plug 'flazz/vim-colorschemes'
	Plug 'ap/vim-css-color'
call plug#end()

filetype indent on

syntax on

set bg=dark
color elflord

" nerdtree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" airline
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


