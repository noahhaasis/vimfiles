" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set backspace=eol,indent,start
" disable vi compatibility (emulation of old bugs)
set nocompatible


" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewhat antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
syntax on
" disable the bell
set visualbell
set t_vb=0
let mapleader = ","
set backup
set noswapfile
" turn line numbers on
set number relativenumber
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set cursorline
set ttyfast
set ruler
set laststatus=2
set undofile
set ignorecase
set gdefault
set incsearch
set gdefault
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
set wrap
set formatoptions=qrn1
set colorcolumn=85
set list
set listchars=tab:▸\ ,eol:¬

nnoremap <up> <nop>
noremap <down> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>
vnoremap <left> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <right> <nop>
nnoremap j gj
nnoremap k gk

noremap H ^
noremap L $
vnoremap L g_

" window
nmap <leader>swh  :topleft  vnew<CR>
nmap <leader>swl :botright vnew<CR>
nmap <leader>swk   :topleft  new<CR>
nmap <leader>swj  :botright new<CR>
" buffer
nmap <leader>sh   :leftabove  vnew<CR>
nmap <leader>sl  :rightbelow vnew<CR>
nmap <leader>sk     :leftabove  new<CR>
nmap <leader>sj   :rightbelow new<CR>

nnoremap <leader>w <C-w>

nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" ctag
nnoremap <leader>td <C-]> 
nnoremap <leader>tn <C-t>
nnoremap <leader>ts g]}

" Automaticlly generate ctags
au BufWritePost *.c,*.cpp,*.h silent! !ctags -R &


if has("gui_running")
  if has("gui_gtk2") || has("gui_gtk3")
    set guifont=Courier\ New\ 12
  elseif has("gui_photon")
    set guifont=Courier\ New:s12
  elseif has("gui_kde")
    set guifont=Courier\ New/12/-1/5/50/0/0/0/1/0
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set guifont=Courier_New:h12:cDEFAULT
  endif
endif

:set guioptions-=m
:set guioptions-=T
:set guioptions-=r
:set guioptions-=L
