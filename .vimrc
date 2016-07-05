set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'rking/ag.vim'
Plugin 'mattn/emmet-vim'
Plugin 'benmills/vimux'
Plugin 'skalnik/vim-vroom'
Plugin 'ck3g/vim-change-hash-syntax'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'Raimondi/delimitMate' " autocomplete bracket
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

let g:rainbow_active = 1

let mapleader = ","

set term=xterm
set t_Co=256

set hlsearch
set background = "dark"
set modelines=0
syntax enable
set nu
set ruler
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest,full
set visualbell
set ttyfast
set re=1
set relativenumber

set nobackup
set noswapfile

set backspace=indent,eol,start

set lazyredraw
set redrawtime=5000
set updatetime=5000
set nowrap

colorscheme darkbone

set laststatus=2

set tabstop=2
set shiftwidth=2
set expandtab

inoremap jj <Esc>

nmap ; :
vmap ; :
map 0 ^

let g:vroom_use_colors = 1
let g:vroom_use_vimux = 1
let g:vroom_write_all = 1
let g:vroom_clear_screen = 1
let g:vroom_use_spring = 0
let g:vroom_use_spring = 0
let g:vroom_spec_command = "docker-compose run rspec bundle exec rspec"

" auto save config
let g:auto_save = 1
let g:auto_save_no_updatetime = 1
let g:auto_save_in_insert_mode = 1
"let g:auto_save_silent = 0

" nerd tree
map <leader>n :NERDTreeToggle<CR>

" Vimux
map <leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>

" fold
set foldmethod=manual
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ctags
nnoremap <leader>ct :!ctags -R --languages=ruby --exclude=.git --exclude=log<CR><CR>

nnoremap <leader>. :CtrlPTag<cr>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

hi VertSplit ctermbg=5 ctermfg=256
set fillchars+=vert:\|

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/log/*,*/coverage/*,tags,*/maildir/*,*/vendor/*,*/public/assets/*,*/bower_components/*,*/dist/*,*/node_modules/*,*/downloads/*
map <leader>p :CtrlPClearAllCaches<CR>

" Airline
let g:airline_theme='bubblegum'

" Map buffer
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>
nnoremap <C-b> :buffers<CR>
