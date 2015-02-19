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
set number
set cmdheight=2
set ignorecase
set smartcase
set magic
set showmatch
set mousehide

" Colores y Fuentes
syntax enable
colorscheme zenburn
call togglebg#map("<F5>")
set background=dark
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
set textwidth=79
set lbr
set tw=20
set ai
set si
set wrap

" Status line
set laststatus=2

execute pathogen#infect()


"""""""""""""""""""""""""""""""""""""""
"""""""""""" FUNCIONES """"""""""""""""
"""""""""""""""""""""""""""""""""""""""

function! AbrirMarked()
  silent !open -a "Marked 2.app" '%:p'
  redraw!
endfunction

function! NuevoPost(args)
   let fich= "/Users/juan/Dropbox/BLOG/juangnzalez.github.io/_posts/" . strftime("%Y-%m-%d") . "-" . tolower(substitute(a:args, " ", "-", "g")) . ".md"
   exe "e!" . fich
   let g:titulo = a:args
endfunction

function! GuardarPost(args)
   let fich = "/Users/juan/Dropbox/BLOG/juangnzalez.github.io/_posts/" . strftime("%Y-%m-%d") . "-" . tolower(substitute(a:args, " ", "-", "g")) . ".md"
   exe "w!" . fich
   let g:titulo= a:args
endfun

command! -nargs=1 NuevoPost call NuevoPost("<args>")
command! -nargs=1 GuardarPost call GuardarPost("<args>")

""""""""""""""""""""""""""""""""""""
"""""""""""" PLUGINS """""""""""""""
""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/goyo.vim'
Plug 'plasticboy/vim-markdown'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/calendar.vim'
Plug 'justinmk/vim-sneak'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'nvie/vim-flake8'

call plug#end()

" Desactiva folding en plug markdown
let g:vim_markdown_folding_disabled=1

" Calendar empieza la semana en Lunes
let g:calendar_monday = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" " If you want :UltiSnipsEdit to split your window
let g:UltiSnipsEditSplit="vertical"

""""""""""""""""""""""""""""""""""""
"""""""""""" TECLAS """"""""""""""""
""""""""""""""""""""""""""""""""""""
" Movimiento entre líneas de forma NATURAL
nnoremap j gj
nnoremap k gk

" Salir de INSERT MODE con jk
imap jk <Esc>

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

" NerdTree Toggle con Espacio + f(inder)
map <Leader>t :NERDTreeToggle<CR>

" Abrir splitv con cal
nnoremap <Leader>cal :Calendar -view=year -split=vertical -width=27<CR>

" Abrir Marked
nnoremap <leader>m :call AbrirMarked()<CR>

" Move visual block. Muy bueno. Para colocar párrafos
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Spell
map <Leader>ss :setlocal spell spelllang=es_ES<CR>
map <Leader>sn :setlocal nospell<CR>

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

" Para el trabajo: entrecomillar
nnoremap <Leader>i :%s/^/'<CR>
nnoremap <Leader>f :%s/$/',<CR>

nnoremap <Leader>np :NuevoPost   
nnoremap <Leader>gp :GuardarPost
