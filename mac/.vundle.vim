set nocompatible
filetype off

if has('win32') || has('win64')
  set rtp+=~/vimfiles/bundle/Vundle.vim/
  call vundle#rc('$HOME/vimfiles/bundle/')
else
  " Usual quickstart instructions
  set rtp+=~/.vim/bundle/Vundle.vim/
  call vundle#rc()
endif

set rtp+=/usr/local/opt/fzf

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic.git'
Plugin 'scrooloose/nerdtree.git'
"Plugin 'jistr/vim-nerdtree-tabs.git'
Plugin 'surround.vim'
" Plugin 'skammer/vim-css-color'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'othree/html5.vim'
Plugin 'wavded/vim-stylus.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vimwiki'
Plugin 'tpope/vim-dispatch'
Plugin 'tristen/vim-sparkup'
"Plugin 'kien/ctrlp.vim'
"Plugin 'Shougo/neocomplcache.vim'
Plugin 'tpope/vim-fireplace.git'
Plugin 'tpope/vim-classpath.git'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'elzr/vim-json.git'
Plugin 'moll/vim-node'
Plugin 'fsharp/vim-fsharp'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'godlygeek/tabular'
" It seems the plugin has problem with python-mode. Disabling it for now until
" I've time to fix it or migrate to something else
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'crusoexia/vim-monokai'
Plugin 'fatih/vim-go'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" Plugin 'Ivo-Donchev/vim-react-goto-definition'
" Plugin 'Shougo/deoplete.nvim'
" Plugin 'roxma/nvim-yarp'
" Plugin 'roxma/vim-hug-neovim-rpc'
" Plugin 'ternjs/tern_for_vim'
Plugin 'solarnz/thrift.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'python-mode/python-mode'


filetype plugin indent on
