" Vundle plugin manager setup
" All plugins should be added on that file
" Do not add `Plugin` commands in .vimrc
source ~/.vim/config/vundle.vimrc

" Set line lines indicators
set number
set relativenumber

" Set colorscheme
colorscheme codedark

" Set powerline
set rtp+=/home/eksapsy/.local/lib/python3.6/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

" Open NERDTree by default
autocmd vimenter *  NERDTree

" More natural split opening
set splitbelow
set splitright

" Enabling typescript lintering
autocmd FileType typescript setlocal completeopt+=menu,preview

" NerdTree Toggle key
nmap <F6> :NERDTreeToggle<CR>

" GitGutter signs colors 
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" Enable GitGutter line highlights on changes
let g:gitgutter_highlight_lines = 1
