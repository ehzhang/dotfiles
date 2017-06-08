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

" Git-gutter!
Plugin 'airblade/vim-gitgutter'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" Syntastic
" Plugin 'scrooloose/syntastic'

" A.L.E
Plugin 'w0rp/ale'

" vim-fugitive
Plugin 'tpope/vim-fugitive'

" vim-better-whitespace
Plugin 'ntpeters/vim-better-whitespace'

" vim-jsx
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" voom
Plugin 'vim-scripts/VOoM'

" auto-pairs
Plugin 'jiangmiao/auto-pairs'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme solarized
hi clear SignColumn
set number
set cursorline
set expandtab
set autoindent
set mouse=a
set ttymouse=sgr
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

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'

let g:javascript_plugin_jsdoc = 1

" 80 char limit
set colorcolumn=80

" CtrlP Ignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Fix gd for python
nmap gd :let varname = '\<<C-R><C-W>\>'<CR>?\<def\><CR>/<C-R>=varname<CR><CR>

" ale options
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

set statusline=%{ALEGetStatusLine()}
