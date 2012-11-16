runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()


syntax on
let g:snipmgr_snippets_dir = $HOME."/.vim/snippets"
"filetype indent plugin on
filetype plugin indent on
filetype plugin on
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set expandtab


colorscheme molokai

"Hide MacVim toolbar by default
set go-=T
set ofu=syntaxcomplete#Complete
setlocal spell spelllang=en_us
set spell



inoremap "<Space>    ""<Left>
inoremap '<Space>    ''<Left>
"autowrite on focus lost
"au FocusLost * :wa

"auto close tag with omnicompletion when '<//' is typed
iabbrev <// </<C-X><C-O>
set tw=78
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>
