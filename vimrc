" Mi leaderKey pasa a ser Space
let mapleader = "\<Space>"

filetype plugin on
filetype indent on

" Nuevas ventanas a la derecha
set splitright

" Forzar que un .md se vea como tipo markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

set autoread

" Interface
set wildmenu
set ruler
set cmdheight=2
set ignorecase
set magic
set showmatch
set backspace=2

" Colores y Fuentes
syntax enable
colorscheme zenburn
"set background=dark
set encoding=utf8
set ffs=unix,dos,mac
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Ficheros, backup
set nobackup
set nowb
set noswapfile

" Texto, tab
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set si
set wrap

" Status line
set laststatus=2

" Spell check
map <leader>ss :setlocal spell!<cr>

function! HasPaste()
        if &paste
                    return 'PASTE MODE  '
        en
        return ''
endfunction

execute pathogen#infect()

function! AbrirMarked()
  silent !open -a "Marked 2.app" '%:p'
  redraw!
endfunction

" Teclas

:nnoremap <leader>m :call AbrirMarked()<cr>


call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/goyo.vim'
Plug 'plasticboy/vim-markdown'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/calendar.vim'

call plug#end()

" Desactiva folding en plug markdown
let g:vim_markdown_folding_disabled=1

""""""""""""""""""""""""""""""""""""
"""""""""""" TECLAS """"""""""""""""
""""""""""""""""""""""""""""""""""""

" VSplit y HSplit
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>h :split<CR>

" Moverse entre ventanas
nnoremap <Leader><Tab> <C-W><C-W>

" Pasar a la ventana de la derecha, izquierda, arriba, abajo
" esta feo usar los cursores ;)
nnoremap <Leader><Right> <C-W><C-L>
nnoremap <Leader><Left> <C-W><C-H>
nnoremap <Leader><Up> <C-W><C-K>
nnoremap <Leader><Down> <C-W><C-J>
" NerdTree Toggle
map <F5> :NERDTreeToggle<CR>

" Abrir splitv con cal
nnoremap <Leader>cal :Calendar -view=year -split=vertical -width=27<CR>
