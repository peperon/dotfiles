set expandtab
set tabstop=2           " use 2 spaces to represent tab
set softtabstop=2
set shiftwidth=2        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set shiftround
" configure expandin gof tabs for various file types
au BufRead,BufNewFile *.cs set expandtab           " enter spaces when tab is pressed
au BufRead,BufNewFile *.cs set tabstop=4           " use 4 spaces to represent tab
au BufRead,BufNewFile *.cs set softtabstop=4
au BufRead,BufNewFile *.cs set shiftwidth=4        " number of spaces to use for auto indent
au BufRead,BufNewFile *.py set expandtab           " enter spaces when tab is pressed
au BufRead,BufNewFile *.py set tabstop=4           " use 4 spaces to represent tab
au BufRead,BufNewFile *.py set softtabstop=4
au BufRead,BufNewFile *.py set shiftwidth=4        " number of spaces to use for auto indent
au BufRead,BufNewFile *.py set textwidth=79        

au BufRead,BufNewFile *.fs* set expandtab           " enter spaces when tab is pressed
au BufRead,BufNewFile *.fs* set tabstop=4           " use 4 spaces to represent tab
au BufRead,BufNewFile *.fs* set softtabstop=4
au BufRead,BufNewFile *.fs* set shiftwidth=4        " number of spaces to use for auto indent
au BufRead,BufNewFile *.fs* set textwidth=79        

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------

set hidden
set complete=.,w,b,k
set completeopt=menuone,longest
set formatoptions=croqn
set nojoinspaces
autocmd FileType man setlocal foldmethod=indent
" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number
syntax on                       " syntax highlighting
set showcmd                     " show (partial) command in status lineset autoindent
syn on
set cindent
set number
set relativenumber
set nocompatible
set notimeout
set ttimeout
"if $TMUX == ''
set clipboard=unnamed
"endif

let mapleader = "\<Space>"
"
"Use <leader>w to save all open buffers
nnoremap <leader>w :w<cr>
"
"Navigate buffers
nnoremap <leader>k :bnext<cr>
nnoremap <leader>j :bprev<cr>

" vim-airline
let g:airline#extensions#tabline#enabled = 1

" NERDTree
let NERDTreeMapOpenInTab='t'
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_console_startup=0
let NERDTreeIgnore=['\.pyc', '\~$', '^__pycache__$']

let g:ycm_autoclose_preview_window_after_completion=1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
"let g:syntastic_debug = 3
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_enable_signs=1
let g:syntastic_fsharp_checkers=['syntax']
let g:syntastic_golang_checkers=['golint']
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "active_filetypes": ["javascript", "go"],
    \ "passive_filetypes": ["python"] }
" end syntastic

if has('win32') || has('win64')
  source ~/Vimfiles/.vundle.vim
  set guifont=Lucida_Console:h9
else
  source ~/.vim/.vundle.vim
endif

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  if has('win32') || has('win64')
    au GUIEnter * simalt ~x
  endif

  " Maximize on Mac OS X
  set lines=999
  set columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

" mappings fzf
map <C-P> :Ag<CR>
map <C-O> :Files<CR>
map <C-B> :Buffers<CR>

nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Space> <NOP>
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
noremap <leader>d :call ReactGotoDef()<CR>

" move among buffers with CTRL
"map <C-J> :bnext<CR>
"map <C-K> :bprev<CR>

" map <C-`> :bnext<CR>

" pymode
let g:pymode = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
let g:pymode_options_max_line_length = 100
let g:pymode_options_colorcolumn = 1
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
let g:pymode_motion = 1
let g:pymode_virtualenv = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_ignore = ["E501", "E702","E712",]

" vimwiki
let g:vimwiki_list = [{'path': '~/Dropbox/wiki/', 'syntax': 'markdown'}]
au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab

com! FormatJSON %!python -m json.tool

syntax on

syntax enable
set background=light
colorscheme solarized
" colorscheme monokai

set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

set encoding=utf-8
"Switch windows with Tab/Shift Tab in normal mode
nnoremap <tab> :bnext<cr>
nnoremap <s-tab> :bprev<cr>

