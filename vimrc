set nocompatible              "be iMproved
"filetype off                  "required!

"set rtp+=/usr/local/opt/fzf
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
call plug#begin('~/.vim/plugged')

"let Vundle manage Vundle
""required! 
"Bundle 'gmarik/vundle'


" let Vundle manage Vundle, required
"Plug 'VundleVim/Vundle.vim'

Plug 'tpope/vim-fugitive'
"Plug 'L9'
Plug 'Lokaltog/vim-easymotion'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
"Plug 'digitaltoad/vim-jade'
Plug 'hallison/vim-markdown'
Plug 'tpope/vim-surround'
"Plug 'molokai'
Plug 'mkitt/browser-refresh.vim'
"Plug 'scrooloose/nerdtree'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle'}
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

"Plug 'Lokaltog/vim-powerline'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tomtom/tcomment_vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'wakatime/vim-wakatime'
Plug 'severin-lemaignan/vim-minimap', { 'on': 'Minimap' } 
Plug 'derekwyatt/vim-scala'
Plug 'fatih/vim-go'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf', {'dir': '/usr/local/opt/fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'tpope/vim-rails.git'
Plug 'hashivim/vim-consul'
Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-packer'
Plug 'ajh17/vim-fist'
Plug 'digitalrounin/vim-yaml-folds'
" All of your Plugs must be added before the following line
"call vundle#end()            " required
call plug#end()
"filetype Plugin indent on    " required
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
" Git repos on your local machine (i.e. when working on your own Plug)
"Bundle 'file:///Users/gmarik/path/to/Plug'
" ...

"filetype Plug indent on     " required!
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
"filetype indent Plug on
"filetype Plug indent on


"filetype Plug on
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set expandtab


"lightline only appears with vertical split (:vsp)
set laststatus=2

"colorscheme molokai
color jellybeans

"Hide MacVim toolbar by default
set go-=T
set ofu=syntaxcomplete#Complete
setlocal spell spelllang=en_us
"set spell
"autocmd FileType yaml setlocal nospell
set nospell
autocmd FileType markdown setlocal spell
" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
" NERDTree-git show ignored files"
let g:NERDTreeShowIgnoredStatus = 1

" CtrlP
"nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5


"emmet enable all modes
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

"Faster shortcut for commenting. Requires T-Comment
map <leader>c <c-_><c-_>

"inoremap "<Space>    ""<Left>
"inoremap '<Space>    ''<Left>
"autowrite on focus lost
"au FocusLost * :wa

"auto close tag with omnicompletion when '<//' is typed
iabbrev <// </<C-X><C-O>
set tw=78
"nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>
"set relativenumber
set number
"set clipboard=unnamed "share system clipboard

"hashivim configs

"Allow vim-terraform to override your .vimrc indentation syntax for matching files. Defaults to 0 which is off.
let g:terraform_align=1
"ALlow vim-terraform to automatically fold (hide until unfolded) sections of terraform code. Defaults to 0 which is off.
let g:terraform_fold_sections=1
"Allow vim-terraform to re-map the spacebar to fold/unfold.
let g:terraform_remap_spacebar=1


"folding
"Here is an alternative procedure: In normal mode, press Space to toggle the current fold open/closed. 
"However, if the cursor is not in a fold, move to the right (the default behavior). In addition, with the manual fold method, you can create a fold by visually selecting some lines, then pressing Space.

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

