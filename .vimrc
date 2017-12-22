" okay let's ride
set nocompatible
set timeoutlen=1000 ttimeoutlen=0

" Plugins
execute pathogen#infect()

" Plugins / airline
" Disable all extensions integration with airline
" let g:airline_extensions = []
let g:airline_symbols_ascii = 1
let g:airline_section_z = airline#section#create_right(['%p%% ln', '%l:%c'])

" Plugins / ctrlp
let g:ctrlp_map = ','
let g:ctrlp_cmd = 'CtrlPBuffer'

" Plugins / syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Mappings
map <Leader><CR> :nohl<CR>:syntax sync fromstart<CR>
map <Leader>w :w<CR>

map <Leader>q :qa<CR>
map <Leader>e :e!<CR>

map <Leader>` :syntax sync fromstart<CR>

map <Leader>k :bd<CR>

map <Space> :NERDTreeToggle<CR>

map j gj
map k gk

no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

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
set list lcs=tab:\ \ ,eol:$	" highlight whitespace
set cursorline						" highlight cursor line
set colorcolumn=73					" highlight 73d column
set foldcolumn=3					" fold column size
set nowrap							" do not wrap lines
set rnu								" show relative linum

" Backup
set writebackup						" backup before writing
set nobackup						" do not save backup

" Buffers
set hidden							" hide edited buffers
set noswapfile

" Folds
set foldmethod=marker

" Sessions
set sessionoptions=folds,buffers,sesdir,localoptions

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

