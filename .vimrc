syntax on 
"set t_Co=256
set number relativenumber
set incsearch
set noswapfile
set scrolloff=8
set signcolumn=yes

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'haishanh/night-owl.vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
call plug#end()


colorscheme codedark
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:gruvbox_transparent_bg = '1'
let g:airline_theme = 'codedark'

" Shortcuts

"NerdTree
"autocmd VimEnter * NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

nnoremap <C-f> :NERDTreeFind<CR>
