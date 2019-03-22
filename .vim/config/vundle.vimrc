" be iMproved
set nocompatible
" Required by Vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe - Auto complete
Plugin 'Valloric/YouCompleteMe'
" NerdTree for file navigation & management
Plugin 'scrooloose/nerdtree'
" Nerd Git
Plugin 'Xuyuanp/nerdtree-git-plugin' 
" Typescript syntax
Plugin 'leafgarland/typescript-vim'
" Typescript Lintering
Plugin 'Qurami/tsuquyomi'
" JS and Typescript correct indentation
Plugin 'jason0x43/vim-js-indent'
" Code theme
Plugin 'tomasiser/vim-code-dark'
" Git Diff Line indicators
Plugin 'airblade/vim-gitgutter'

" All of the plugins must be hosted before this line
call vundle#end()
filetype plugin indent on

