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
Plugin 'tpope/vim-rhubarb'
Plugin 'shumphrey/fugitive-gitlab.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree.git'
Plugin 'surround.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'othree/html5.vim'
Plugin 'wavded/vim-stylus.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vimwiki'
Plugin 'tpope/vim-dispatch'
Plugin 'tristen/vim-sparkup'
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
Plugin 'solarnz/thrift.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'python-mode/python-mode'


filetype plugin indent on
