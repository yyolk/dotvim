"be iMproved

set nocompatible

"Encoding
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" Used in conditionals for toggling paths for lsp, OS specific features
let uname = substitute(system('uname'), '\n', '', '')
" Example values: Linux, Darwin, MINGW64_NT-10.0,...

call plug#begin('~/.vim/plugged')


" Probably not needed with LSP
" Smart auto-indentation for Python
" Plug 'vim-scripts/indentpython.vim'

" Git plugin
Plug 'tpope/vim-fugitive'

" Auto-completing engine
" is terrible
" Plug 'ycm-core/YouCompleteMe', {'do': 'python3 install.py --clang-completer'}
"Plug 'L9'

"Lokaltog/Easymotion is deprecated, easymotion/vim-easymotion is the latest
"Plug 'Lokaltog/vim-easymotion'

" HTML QOL
" I use emmet
" Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plug 'mattn/emmet-vim'
"Plug 'valloric/MatchTagAlways'

" LSP makes obsolete
"Plug 'pangloss/vim-javascript'
"Plug 'othree/yajs.vim', { 'for': 'javascript' }
"Plug 'digitaltoad/vim-jade'
" Plug 'hallison/vim-markdown'

" Tab shit
" Plug 'godlygeek/tabular'

" LSP makes obsolete
" Plug 'plasticboy/vim-markdown'

" Markdown Preview
" i don't like having to install shit blindly with npx
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }


" I use this all the time
Plug 'tpope/vim-surround'


" Probably don't need
" Plug 'mkitt/browser-refresh.vim'
" Make nerdtree, nerdtree-git-plugin and vim-devicons work together
" Note: FYI Blex Mono is the patched NerdFont for IBM Plex Mono
Plug 'preservim/nerdtree' |
  \ Plug 'Xuyuanp/nerdtree-git-plugin' |
  \ Plug 'ryanoasis/vim-devicons'
" The same as above, but don't load vim-devicons
" Plug 'preservim/nerdtree' |
"   \ Plug 'Xuyuanp/nerdtree-git-plugin'

" On-demand loading with Plug
" Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
" Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle'}
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }


"Plug 'Lokaltog/vim-powerline'
" Plug 'itchyny/lightline.vim'
" still functional in 2024
Plug 'vim-airline/vim-airline'

" Awesome staring screen for Vim
"Plug 'mhinz/vim-startify'

" Search bar
" Plug 'kien/ctrlp.vim'

" Syntastic is deprecated
" Plug 'vim-syntastic/syntastic'
" Python backend for 'syntastic'
" obsolete for LSP / ALE
" Plug 'nvie/vim-flake8'

" My preffered colorscheme
Plug 'nanotech/jellybeans.vim'
Plug 'tstelzer/welpe.vim'
Plug 'goirijo/vim-jgg-colorscheme'
Plug 'vim-scripts/candyman.vim'
Plug 'w0ng/vim-hybrid'
" Plug 'JoydeepMallick/My-vim-themes-and-vimrc', {'
Plug 'thedenisnikulin/vim-cyberpunk'


" Editorconfig is awesome
Plug 'editorconfig/editorconfig-vim'

" Toggle comment
Plug 'tomtom/tcomment_vim'

Plug 'terryma/vim-multiple-cursors'

" Wakatime
Plug 'wakatime/vim-wakatime'

" Plug 'severin-lemaignan/vim-minimap', { 'on': 'Minimap' }
" Plug 'derekwyatt/vim-scala'
" Plug 'fatih/vim-go'
"Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all' }
" Compile from source..
"Plug 'junegunn/fzf', {'dir': '/usr/local/opt/fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
"Plug 'tpope/vim-rails.git'
"
" Hashicorp tools
" Plug 'hashivim/vim-consul'
Plug 'hashivim/vim-terraform'
" Plug 'hashivim/vim-packer'
" Ansible
" Plug 'pearofducks/ansible-vim'
" Gist plugin
"Plug 'ajh17/vim-fist'
"Possible obsolete with LSP
"Plug 'digitalrounin/vim-yaml-folds'
" LSP makes obsolete
" Plug 'leafgarland/typescript-vim'
" LSP makes obsolete
" Plug 'davidhalter/jedi-vim'
" Plug 'integralist/vim-mypy'
" LSP makes obsolete
" Plug 'jparise/vim-graphql'
" probably last ALE/LSP thing
" Plug 'w0rp/ale'
" dense-analysis/ale is the new one I think
" Only works with Marked.app, if it is installed, can be set to another app
" Plug 'itspriddle/vim-marked'
" Find and replace
" Plug 'brooth/far.vim'
" Easy align, gaip=
" Plug 'junegunn/vim-easy-align'

Plug 'psf/black', { 'branch': 'stable' }

" Obsolete for LSP / ALE
" Rich python syntax highlighting
" Plug 'kh3phr3n/python-syntax'

"Plug 'plytophogy/vim-virtualenv'
"Plug 'PieterjanMontens/vim-pipenv'
"
" Seems weird...
" Plug 'vim-scripts/project.tar.gz'
" Plug 'cespare/vim-toml'

Plug 'yegappan/lsp'

" Probably obsolete
" Plug 'chr4/nginx.vim'
" Plug 'hjson/vim-hjson'
call plug#end()
" I don't use snipmgr anymore
" "Automatically executes filetype plugin indent on and syntax enable. 
" "You can revert the settings after the call. e.g. filetype indent off, syntax off, etc.
" let g:snipmgr_snippets_dir = $HOME."/.vim/snippets"

" set up whitespace, default tabs
set scrolloff=99
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set expandtab

set tw=79
""" from: https://realpython.com/vim-and-python-a-match-made-in-heaven/
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

" 
" many thanks Steven K :)
"give me a login
" set shell=bash

"crosshairs
set cursorline
set cursorcolumn

" "wildmenu
" set wildmenu "enable ctrl-n and ctrl-p to scroll thru matches
" set wildmode=list:longest,full
" set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
" set wildignore+=DS_Store
" set wildignore+=*.png,*.jpg,*.gif

" ???
" set pumheight=10
" https://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
"set re=1

"lightline only appears with vertical split (:vsp)
" set laststatus=2
" let g:lightline = {
"       \ 'component_function': {
"       \   'filename': 'LightlineFilename',
"       \ }
"       \ }
"
" function! LightlineFilename()
"     let root = fnamemodify(get(b:, 'git_dir'), ':h')
"     let path = expand('%:p')
"     if path[:len(root)-1] ==#root
"         return path[len(root)+1:]
"     endif
"     return expand('%')
" endfunction
"

" let g:jedi#force_py_version=3

"colorscheme molokai
" My preffered colorscheme
color jellybeans

set colorcolumn=80
"highlight ColorColumn ctermbg=8
"highlight ColorColumn ctermbg=234 guibg=#262626
highlight ColorColumn ctermbg=234 guibg=#eaeaea


"Hide MacVim toolbar by default
set go-=T
"set ofu=syntaxcomplete#Complete

setlocal spell spelllang=en_us
"set spell to off by default
"autocmd FileType yaml setlocal nospell
set nospell
"set spell on when editing markdown
autocmd FileType markdown setlocal spell

" NERDTree
" nmap <leader>N :NERDTreeToggle<CR>
" let NERDTreeHighlightCursorline=1
" let NERDTreeIgnore = ['.yardoc', 'pkg', '__pycache__', '.ipython']
" NERDTree-git show ignored files"
" let g:NERDTreeShowIgnoredStatus = 1
" NERDTree 2024
nnoremap <leader>N :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" " CtrlP
" "nnoremap <silent> t :CtrlP<cr>
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_working_path_mode = 2
" let g:ctrlp_by_filename = 1
" let g:ctrlp_max_files = 600
" let g:ctrlp_max_depth = 5


"emmet enable all modes
" let g:user_emmet_mode='n'    "only enable normal mode functions.
" let g:user_emmet_mode='inv'  "enable all functions, which is equal to
" let g:user_emmet_mode='a'    "enable all function in all mode.

"Faster shortcut for commenting. Requires T-Comment
map <leader>c <c-_><c-_>

" inoremap \"<Space>    \""<Left>
" inoremap '<Space>    ''<Left>
" autowrite on focus lost
" au FocusLost * :wa

"auto close tag with omnicompletion when '<//' is typed
" iabbrev <// </<C-X><C-O>

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers = ['pep8']


" " pipenv via: https://y.yolk.cc/2p32Kmw
" " Point YCM to the Pipenv created virtualenv, if possible
" " At first, get the output of 'pipenv --venv' command.
" " let pipenv_venv_path = system('pipenv --venv')
" let current_python = substitute(system('which python'), '\n', '', '')
" let g:ycm_server_python_interpreter = current_python
" " The above system() call produces a non zero exit code whenever
" " a proper virtual environment has not been found.
" " So, second, we only point YCM to the virtual environment when
" " the call to 'pipenv --venv' was successful.
" " Remember, that 'pipenv --venv' only points to the root directory
" " of the virtual environment, so we have to append a full path to
" " the python executable.
" if shell_error == 0
"   " let venv_path = substitute(pipenv_venv_path, '\n', '', '')
"   " let g:ycm_python_binary_path = venv_path . '/bin/python'
"   let g:ycm_python_binary_path = current_python
" else
"   let g:ycm_python_binary_path = 'python'
" endif

"nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>
"set relativenumber
set number
" Clipboard stuffs to revisit
""set clipboard=unnamed "share system clipboard
" nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
" imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
" nmap <F2> :.w !pbcopy<CR><CR>
" vmap <F2> :w !pbcopy<CR><CR>

"hashivim configs

" "Allow vim-terraform to override your .vimrc indentation syntax for matching files. Defaults to 0 which is off.
" let g:terraform_align=1
" "ALlow vim-terraform to automatically fold (hide until unfolded) sections of terraform code. Defaults to 0 which is off.
" let g:terraform_fold_sections=1
" "Allow vim-terraform to re-map the spacebar to fold/unfold.
" let g:terraform_remap_spacebar=1


"folding
"Here is an alternative procedure: In normal mode, press Space to toggle the current fold open/closed. 
"However, if the cursor is not in a fold, move to the right (the default behavior). In addition, with the manual fold method, you can create a fold by visually selecting some lines, then pressing Space.

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

"vim-easy-align mappings
" Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)


" allow backspacing over everything in insert mode
set backspace=indent,eol,start


" LSP Servers and config
" this is a placeholder, as this is the same as the default option
let lspOpts = #{autoHighlightDiags: v:true}
let lspServers = []

" All settings are specific to running on Mac with brew installations in most
" cases

if uname == 'Darwin'
  " LaTeX
  call add(lspServers, #{
        \ name: 'texlab',
        \ filetype: ['tex'],
        \ path: '/opt/homebrew/bin/texlab',
        \ args: [],
        \ })

  " Lua
  call add(lspServers, #{
        \ name: 'luals',
        \ filetype: 'lua',
        \ path: '/opt/homebrew/bin/lua-language-server',
        \ args: [],
        \ workspaceConfig: #{
        \   Lua: #{
        \     hint: #{
        \       enable: v:true,
        \     }
        \   }
        \ },
        \ })

  " Rust
  call add(lspServers, #{
        \ name: 'rustanalyzer',
        \ filetype: ['rust'],
        \ path: '/opt/homebrew/bin/rust-analyzer',
        \ args: [],
        \ syncInit: v:true,
        \ initializationOptions: #{
        \   inlayHints: #{
        \     typeHints: #{
        \       enable: v:true
        \     },
        \     parameterHints: #{
        \       enable: v:true
        \     }
        \   },
        \ },
        \ })

  " Terraform
  call add(lspServers, #{
        \ name: 'terraform-ls',
        \ path: '/opt/homebrew/bin/terraform-ls',
        \ args: ['serve'],
        \ filetype: ['terraform', 'terraform-vars', 'tf', 'hcl'],
        \ })

  " bash
  call add(lspServers, #{
    \ name: 'bashls',
    \ filetype: ['sh', 'bash'],
    \ path: '/Users/yolk/.nvm/versions/node/v21.6.1/bin/bash-language-server',
    \ args: ['start'],
    \ })

  " TOML
  call add(lspServers, #{
        \ name: 'taplo',
        \ filetype: ['toml'],
        \ path: '/opt/homebrew/bin/taplo',
        \ args: ['lsp', 'stdio'],
        \ })

  " YAML
  call add(lspServers, #{
        \ name: 'yamlls',
        \ filetype: ['yaml', 'yml'],
        \ path: '/Users/yolk/.nvm/versions/node/v21.6.1/bin/yaml-language-server',
        \ args: ['--stdio'],
        \ })

  " Dockerfile
  call add(lspServers, #{
        \ name: 'dockerls',
        \ filetype: ['dockerfile'],
        \ path: '/Users/yolk/.nvm/versions/node/v21.6.1/bin/docker-langserver',
        \ args: ['--stdio'],
        \ })

  " vim
  call add(lspServers, #{
        \ name: 'vimls',
        \ filetype: 'vim',
        \ path: '/Users/yolk/.nvm/versions/node/v21.6.1/bin/vim-language-server',
        \ args: ['--stdio'],
        \ })

  " Markdown
  call add(lspServers, #{
        \ name: 'marksman',
        \ filetype: ['markdown'],
        \ path: '/opt/homebrew/bin/marksman',
        \ args: ['server'],
        \ })

  " emmet
  call add(lspServers, #{
    \ name: 'emmet',
    \ filetype: 'html',
    \ path: '/Users/yolk/.nvm/versions/node/v21.6.1/bin/emmet-language-server',
    \ args: ['--stdio'],
    \})

  " HTML
  call add(lspServers, #{
        \ name: 'vscode-html-server',
        \ filetype: ['html'],
        \ path: '/Users/yolk/.nvm/versions/node/v21.6.1/bin/vscode-html-language-server',
        \ args: ['--stdio'],
        \ })

  " CSS
  call add(lspServers, #{
        \ name: 'vscode-css-server',
        \ filetype: ['css'],
        \ path: '/Users/yolk/.nvm/versions/node/v21.6.1/bin/vscode-css-language-server',
        \ args: ['--stdio'],
        \ })

  " JavaScript, Typescript
  call add(lspServers, #{
        \ name: 'tsserver',
        \ filetype: ['javascript', 'javascript.jsx', 'javascriptreact', 'typescript'],
        \ path: '/Users/yolk/.nvm/versions/node/v21.6.1/bin/typescript-language-server',
        \ args: ['--stdio'],
        \ })

  " JSON
  call add(lspServers, #{
        \ name: 'vscode-json-server',
        \ filetype: ['json'],
        \ path: '/Users/yolk/.nvm/versions/node/v21.6.1/bin/vscode-json-language-server',
        \ args: ['--stdio'],
        \ })

  " TODO: figure a way to toggle between either pylsp or pyright-langserver
  " Python
  " let lspServers = [#{
  " 	\	name: 'pylsp',
  " 	\	filetype: 'python',
  " 	\	path: '/Users/yolk/.pyenv/shims/pylsp',
  " 	\	args: []
  " 	\	},
  "   \ #{
  call add(lspServers, #{
    \	name: 'pyright',
    \	filetype: 'python',
    \	path: '/Users/yolk/.nvm/versions/node/v21.6.1/bin/pyright-langserver',
    \	args: ['--stdio'],
    \	workspaceConfig: #{
    \	python:	#{
    \		pythonPath: '/Users/yolk/.pyenv/shims/python'
    \	}}
    \	})
    " \	}]
endif

autocmd VimEnter * call LspOptionsSet(lspOpts)
autocmd VimEnter * call LspAddServer(lspServers)

nnoremap <leader>d :LspPeekDefinition<CR>
nnoremap <leader>D :LspGotoDefinition<CR>
nnoremap <leader>o :LspOutline<CR>
nnoremap <leader>h :LspDiag here<CR>
nnoremap <leader>H :LspHover<CR>
nnoremap <leader>T :LspGotoTypeDef<CR>
