
set nocompatible              "be iMproved
filetype off                  "required!

set rtp+=/usr/local/opt/fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle
""required! 
"Bundle 'gmarik/vundle'


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'digitaltoad/vim-jade'
Plugin 'hallison/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'molokai'
Plugin 'mkitt/browser-refresh.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'wakatime/vim-wakatime'
"Plugin 'tpope/vim-rails.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" My bundles here:
"
" original repos on GitHub
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'digitaltoad/vim-jade'
"Bundle 'hallison/vim-markdown'
"Bundle 'tpope/vim-surround'
"Bundle 'molokai'
"Bundle 'mkitt/browser-refresh.vim'
"Bundle 'scrooloose/nerdtree'
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'scrooloose/syntastic'
"Bundle 'kien/ctrlp.vim'
"Bundle 'nanotech/jellybeans.vim'
"Bundle 'editorconfig/editorconfig-vim'
"Bundle 'tomtom/tcomment_vim'
"Bundle 'terryma/vim-multiple-cursors'
"Bundle 'tpope/vim-rails.git' " actually disabled


" vim-scripts repos
"Bundle 'Tabmerge'
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

"filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

"runtime bundle/vim-pathogen/autoload/pathogen.vim
"call pathogen#infect()
"call pathogen#helptags()


syntax on
let g:snipmgr_snippets_dir = $HOME."/.vim/snippets"
"filetype indent plugin on
"filetype plugin indent on


"filetype plugin on
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set expandtab


"colorscheme molokai
color jellybeans

"Hide MacVim toolbar by default
set go-=T
set ofu=syntaxcomplete#Complete
setlocal spell spelllang=en_us
set spell

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']


" CtrlP
"nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5

"Faster shortcut for commenting. Requires T-Comment
map <leader>c <c-_><c-_>

inoremap "<Space>    ""<Left>
inoremap '<Space>    ''<Left>
"autowrite on focus lost
"au FocusLost * :wa

"auto close tag with omnicompletion when '<//' is typed
iabbrev <// </<C-X><C-O>
set tw=78
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>
"set relativenumber
set number


