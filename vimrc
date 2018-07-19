set nocompatible              "be iMproved

call plug#begin('~/.vim/plugged')

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
Plug 'brooth/far.vim'
Plug 'pearofducks/ansible-vim'
Plug 'junegunn/vim-easy-align'
Plug 'chr4/nginx.vim'
Plug 'hjson/vim-hjson'
Plug 'leafgarland/typescript-vim'
call plug#end()
"Automatically executes filetype plugin indent on and syntax enable. 
"You can revert the settings after the call. e.g. filetype indent off, syntax off, etc.
let g:snipmgr_snippets_dir = $HOME."/.vim/snippets"

set scrolloff=99
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set expandtab

" 
" many thanks Steven K :)
"give me a login
set shell=bash

"crosshairs
set cursorline
set cursorcolumn

"wildmenu
set wildmenu "enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=list:longest,full
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=DS_Store
set wildignore+=*.png,*.jpg,*.gif

set pumheight=10
" https://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
set re=1

"lightline only appears with vertical split (:vsp)
set laststatus=2
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ }
      \ }

function! LightlineFilename()
    let root = fnamemodify(get(b:, 'git_dir'), ':h')
    let path = expand('%:p')
    if path[:len(root)-1] ==#root
        return path[len(root)+1:]
    endif
    return expand('%')
endfunction

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
let NERDTreeIgnore = ['.yardoc', 'pkg']
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

"vim-easy-align mappings
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

