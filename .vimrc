" okay let's ride
set nocompatible

" Plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_map = '<Leader>p'
let g:ctrlp_cmd = 'CtrlPBuffer'

" Mappings
map <Leader><CR> :nohl<CR>:syntax sync fromstart<CR>
map <Leader>w :w<CR>

map <Leader>` :syntax sync fromstart<CR>

map <Leader>k :bd<CR>

map j gj
map k gk

" Search
set ignorecase
set hlsearch						" highlight search match
set incsearch						" instant search

" Tabs
"set expandtab						" use spaces instead of tab (insert)
"set smarttab
set shiftwidth=0					" shiftwidth = tabstop
set tabstop=4						" tab size
"set softtabstop=0

" Indentation
set autoindent
set smartindent
" set cindent

" Window
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2					" always show status line
set list lcs=tab:<\ ,space:·,eol:$	" highlight whitespace
set cursorline						" highlight cursor line
set colorcolumn=73					" highlight 73d column
set foldcolumn=3					" fold column size
set nowrap							" do not wrap lines
set rnu								" show relative linum

" Backup
set writebackup						" backup before writing
set nobackup						" do not save backup

" Buffers
set noswapfile

set mouse=a

filetype on
filetype plugin on
filetype indent on

set wildmenu

set encoding=utf8
set fileformats=unix,dos,mac

" 
syntax enable

" .vim/colors/zenburn.vim
colors zenburn

