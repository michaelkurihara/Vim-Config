"Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'sickill/vim-pasta'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-perl/vim-perl'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'guns/vim-sexp'
Plugin 'pangloss/vim-javascript'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'elixir-editors/vim-elixir'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"Airline
"let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="molokai"
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''


"Show Statusbar
set laststatus=2


"Set relative number where home line is the actual line instead of 0"
set number
set relativenumber

" syntax on
" syntax enable

"Synastic Settings"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"
"Perl Synastic"
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'podchecker']

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

"set tabstop=2

set showcmd

set autoindent
set cindent

"setlocal nocindent

set colorcolumn=80

"Remap Escape"
imap <C-L> <Esc>:w <CR>

"Remap up and down arrows to move lines"
"no <down> ddp"
"no <up> ddkaP"

"quick pairs"
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i

"quick save"
imap <leader>w <ESC>:wi

"color scheme
colorscheme candycode 

"remap leader key
let mapleader = ","

"quick c substitutes"
imap <leader>pf printf("");<ESC>hhi

"Man Plugin"
runtime ftplugin/man.vim


"vim-sexp"
"Default"
let g:sexp_filetypes = 'clojure,scheme,lisp,timl'
let g:sexp_enable_insert_mode_mappings = 1
let g:sexp_insert_after_wrap = 1
