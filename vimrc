set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Solarized Colors
Plugin 'altercation/vim-colors-solarized.git'

" Jedi-vim
Plugin 'davidhalter/jedi-vim.git'

" Nerdtree
Plugin 'scrooloose/nerdtree.git'

" Ctrl-P
Plugin 'kien/ctrlp.vim.git'

" Powerline!
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme solarized
set number
set cursorline
set expandtab
set autoindent
set mouse=a
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Enable syntax highlighing for .md files (Markdown)
au BufRead,BufNewFile *.md set filetype=markdown

" Check to make sure that files have different indentation
filetype plugin indent on

" Get powerline up an going
set laststatus=2

" Set incremental search!
set incsearch
" Highlight that shit!
set hlsearch

" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Shift between tabs using Shift Right, Shift Left
map <S-Right> :tabn<CR>
map <S-Left>  :tabp<CR>

" Open NERDTree using Shift Tab
map <S-Tab> :NERDTreeToggle<CR>

" Vim Indentation Guides
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
