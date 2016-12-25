" Mappings
map <Leader><CR> :nohl<CR>:syntax sync fromstart<CR>
map <Leader>w :w<CR>

execute "set <M-1>=\e1"
execute "set <M-2>=\e2"
execute "set <M-3>=\e3"
execute "set <M-4>=\e4"
execute "set <M-5>=\e5"
execute "set <M-6>=\e6"
execute "set <M-7>=\e7"
execute "set <M-8>=\e8"
execute "set <M-9>=\e9"
map <M-1> :tabnext 1<CR>
map <M-2> :tabnext 2<CR>
map <M-3> :tabnext 3<CR>
map <M-4> :tabnext 4<CR>
map <M-5> :tabnext 5<CR>
map <M-6> :tabnext 6<CR>
map <M-7> :tabnext 7<CR>
map <M-8> :tabnext 8<CR>
map <M-9> :tabnext 9<CR>

map <Leader>` :syntax sync fromstart<CR>

map <Leader>k :bd<CR>

map j gj
map k gk

"
" set expandtab
" set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set autoindent
set smartindent
set cindent

set ignorecase
set hlsearch
set incsearch
set magic

set cursorline
set rnu
set foldcolumn=3
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2

set nowrap
set colorcolumn=73

set showmatch
set list lcs=tab:<\ ,space:·,eol:$

set wildmenu

set autochdir

set encoding=utf8
set fileformats=unix,dos,mac

set nobackup
set nowritebackup
set noswapfile

set mouse=a

"
syntax enable

" .vim/colors/zenburn.vim
colors zenburn

