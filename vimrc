"" Mi leaderKey pasa a ser Space
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
colorscheme pablo
"call togglebg#map("<F5>")
"set background=dark
set encoding=utf8
set ffs=unix,dos,mac
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
set guifont=Menlo:h12
set guioptions=aAce
" set columns=100

" Ficheros, backup
set nobackup
set nowb
set noswapfile

" Texto, tab
set expandtab
set smarttab
set shiftwidth=2
set tabstop=4
set textwidth=79
set lbr
set ai
set si
set wrap
" no continua comentario en línea siguiente
au FileType * set fo-=cro
" desactivar indentación 
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Status line
set laststatus=2

"execute pathogen#infect()


"""""""""""""""""""""""""""""""""""""""
"""""""""""" FUNCIONES """"""""""""""""
"""""""""""""""""""""""""""""""""""""""

"function! AbrirMarked()
"  silent !open -a "Marked 2.app" '%:p'
"  redraw!
"endfunction

""""""""""""""""""""""""""""""""""""
"""""""""""" PLUGINS """""""""""""""
""""""""""""""""""""""""""""""""""""
"call plug#begin('c:\Archivos de programa\Vim\vimfiles\plugin\')

"Plug 'dhruvasagar/vim-table-mode'
"Plug 'gabrielelana/vim-markdown'
"Plug 'godlygeek/tabular'
"Plug 'junegunn/vim-easy-align'
"Plug 'junegunn/goyo.vim'
"Plug 'plasticboy/vim-markdown'
"Plug 'bling/vim-airline'
"Plug 'scrooloose/nerdtree'
"Plug 'itchyny/calendar.vim'
"Plug 'justinmk/vim-sneak'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'nvie/vim-flake8'

"call plug#end()

" Desactiva folding en plug markdown
"let g:vim_markdown_folding_disabled=1

" Calendar empieza la semana en Lunes
"let g:calendar_monday = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/V"alloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" " If you want :UltiSnipsEdit to split your window
"let g:UltiSnipsEditSplit="vertical"

""""""""""""""""""""""""""""""""""""
"""""""""""" TECLAS """"""""""""""""
""""""""""""""""""""""""""""""""""""
" Movimiento entre líneas de forma NATURAL
nnoremap j gj
nnoremap k gk

" Salir de INSERT MODE con jk
inoremap <special> jj <ESC>

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
"map <Leader>t :NERDTreeToggle<CR>

" Abrir splitv con cal
"nnoremap <Leader>cal :Calendar -view=year -split=vertical -width=27<CR>

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

"nnoremap <Leader>np :NuevoPost   
"nnoremap <Leader>gp :GuardarPost
