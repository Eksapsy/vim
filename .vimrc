" Change the leader from '\'
let mapleader="\\"

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
" autocmd vimenter *  NERDTree

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

" Disable arrow movement, resize splits instead.
nnoremap <Up>	 :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
" Shortcuts
nnoremap <Leader>o :Files<CR>
nnoremap <Leader>O :CtrlP<CR>
nnoremap <Leader>w :w<CR>

" Fuzzy Finder ignore certain files/directories
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Auto reload when file changes in the disk
set autoread
au CursorHold, CursorHoldI * checktime " Trigger when cursor stops moving
au FocusGained, BufEnter * :checktime " Trigger on buffer change or terminal focus

" ctrlp-funky function finder mappings
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' .expand('<cword>')<Cr>

" Autoformat
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,typescript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,json AutoFormatBuffer js-beautify 
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
augroup END

" Set vim history max
set history=1000
" Set undo history
set undolevels=1000
" Ignore files
set wildignore=*.swp,*.bak,*.pyc,*.class
" Change terminal's title
set title
" dont beep
set visualbell
set noerrorbells
" Dont write backup files
set nobackup
set noswapfile
" Dont close files, buffer them so I can edit without being asked to save it
set hidden
" Highlight spaces
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.
" Paste toggle
set pastetoggle=<F2>
" TagBar mapping
nmap <F8> :TagbarToggle<CR>
" Tagbar language
let g:tagbar_type_typescript = {                                                  
  \ 'ctagsbin' : 'tstags',                                                        
  \ 'ctagsargs' : '-f-',                                                           
  \ 'kinds': [                                                                     
    \ 'e:enums:0:1',                                                               
    \ 'f:function:0:1',                                                            
    \ 't:typealias:0:1',                                                           
    \ 'M:Module:0:1',                                                              
    \ 'I:import:0:1',                                                              
    \ 'i:interface:0:1',                                                           
    \ 'C:class:0:1',                                                               
    \ 'm:method:0:1',                                                              
    \ 'p:property:0:1',                                                            
    \ 'v:variable:0:1',                                                            
    \ 'c:const:0:1',                                                              
  \ ],                                                                            
  \ 'sort' : 0                                                                    
\ }

let g:tagbar_type_javascript = {
      \ 'ctagstype': 'javascript',
      \ 'kinds': [
      \ 'A:arrays',
      \ 'P:properties',
      \ 'T:tags',
      \ 'O:objects',
      \ 'G:generator functions',
      \ 'F:functions',
      \ 'C:constructors/classes',
      \ 'M:methods',
      \ 'V:variables',
      \ 'I:imports',
      \ 'E:exports',
      \ 'S:styled components'
      \ ]}
" Easier window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
