set t_Co=256
"ogt - tabs
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'tyrannicaltoucan/vim-deep-space'
Plugin 'scrooloose/nerdcommenter'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'ervandew/supertab'
Plugin 'Lokaltog/vim-powerline'
Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-surround'
call vundle#end()            

set autoread

"my settings  
map <C-n> :NERDTreeToggle<CR>

let g:user_emmet_expandabbr_key = '<C-e>'


"set foldenable    
"set foldmethod=syntax 
"set foldmethod=indent 
"Russian key
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

set autoindent
set tabstop=2
set scrolloff=3
set shiftwidth=2
set smarttab
set expandtab
syntax enable
set autoread
set smartindent

"hi Comment cterm=italic
colorscheme space-vim
colorscheme lucius
set nocompatible
colors dracula
set number
set linebreak
set dy=lastline
set iminsert=0
set wrap
set timeoutlen=300

"Doesn't create swap file
set noswapfile

"Searching without registr
set ignorecase

"hightlight mutches
set hlsearch
set incsearch

"imap ( ()<left>
"imap [ []<left>
"imap { {}<left>
"imap {<cr> {<cr>}<esc>O
"imap <c-9> (
"imap <c-[> [

map <C-?> <plug>NERDCommenterComment
map <C-_> <plug>NERDCommenterToggle
set cursorline

"vim autoread 
nnoremap <C-h> :noh<CR>

"vundle config 
filetype off
filetype plugin on
filetype plugin indent on

let g:EasyMotion_smartcase = 1
"let g:EasyMotion_do_shade = 0
hi link EasyMotionTarget Search

""tagbar settings
let g:tagbar_sort = 0
""let g:tagbar_width = 35
let g:tagbar_iconchars = ['+', '-']
let g:tagbar_map_close = '<C-m>'
"let g:tagbar_type_php = {
"	\'ctagstype': 'php',
"	\'kinds': [
"		\'i:interfaces',
"		\'c:classes',
"		\'d:constants',
"		\'f:functions'
"	\]
"	\}
"let g:tagbar_type_javascript = {
"			\'ctagstype':'JavaScript',
"	\'kinds' : [
"		\'f:functions',
"		\'c:classes',
"		\'m:methods',
"		\'p:properties'
"	\]
"	\}

"Keymap sets
imap df <Esc>

"airlineTheme 

"js plugin 
nmap <F8> :TagbarToggle<CR>

"tabline settings

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
"let g:airline_mode_map = {
   "\ '__' : '-',
      "\ 'n'  : 'N',
      "\ 'i'  : 'I',
      "\ 'R'  : 'R',
      "\ 'c'  : 'C',
      "\ 'v'  : 'V',
      "\ 'V'  : 'V',
      "\ '^V' : 'V',
      "\ 's'  : 'S',
      "\ 'S'  : 'S',
      "\ '^S' : 'S',
      "\ }
set laststatus=2
let g:airline_theme='bubblegum'
let g:airline_skip_empty_sections = 1
