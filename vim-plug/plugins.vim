" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " Generic Syntax Highlight
  Plug 'sheerun/vim-polyglot'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'
  " One Dark theme"
  Plug 'joshdick/onedark.vim'
  " Stable version of coc
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Keeping up to date with master
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  " Ranger plugin
  Plug 'francoiscabrol/ranger.vim'
  " Dependency ranger for nvim
  Plug 'rbgrouleff/bclose.vim'
  " The fzf file searcher
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  " Fzf dependency
  Plug 'junegunn/fzf.vim'
  " Drakula theme
  Plug 'dracula/vim', { 'as': 'dracula' }
  " copy paste support
  Plug 'christoomey/vim-system-copy'
  " Status line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'christoomey/vim-system-copy'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'rust-lang/rust.vim'
call plug#end()
