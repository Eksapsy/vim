" Change the leader from '\'
let mapleader="\\"

" Make sure filetype is on
filetype plugin on

" YouCompleteMe requires utf8 encoding
set encoding=utf-8

" Vundle plugin manager setup
" All plugins should be added on that file
" Do not add Plugins or other Vundle commands in .vimrc
source ~/.vim/configs/vundle.vimrc

" Set line lines indicators
set number
set relativenumber

" Copy & Paste maps to system clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Set colorscheme #visual_studio #colorscheme
colorscheme codedark

" Set powerline #statusbar #status #statusline
set rtp+=~/.local/lib/python3.6/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

" Golang Linter
set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

" Nerdtree #auto_open
" autocmd vimenter *  NERDTree
" #auto-close
let NERDTreeQuitOnOpen = 1

" More natural split opening #buffer #split
set splitbelow
set splitright

" Valloric/youcompleteme #autocomplete
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']

" leafgarland/typescript-vim #typescript #lintering
autocmd FileType typescript setlocal completeopt+=menu,preview

" NerdTree #mappings #toggle
nmap <F6> :NERDTreeToggle<CR>

" GitGutter #signs #colors
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
nnoremap <Leader>q :q<CR>
" Visual search
vnoremap // y/<C-R>"<CR>


" Auto reload when file changes in the disk
set autoread
au CursorHold, CursorHoldI * checktime " Trigger when cursor stops moving
au FocusGained, BufEnter * :checktime " Trigger on buffer change or terminal focus

" ctrlp #exclude #files
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" ctrlp-funky #mappings
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' .expand('<cword>')<Cr>

" google/vim-codefmt #autoformat #format #code
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,protoAutoFormatBuffer clang-format
  autocmd Filetype javascript,typescript AutoFormatBuffer prettier
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
" Highlight searches
set hlsearch
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
" TagBar #mapping
nmap <F8> :TagbarToggle<CR>
" Tagbar #configurations
let g:tagbar_ctags_bin='/snap/bin/universal-ctags.ctags'
let g:tagbar_autofocus=1
let g:tagbar_autopreview=1
" Tagbar #language
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

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
  \ 'sort' : 0 }

let g:tagbar_type_javascript = {
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
  \ 'sort' : 0 }

" let g:tagbar_type_javascript = {
"      \ 'ctagstype': 'javascript',
"      \ 'kinds': [
"      \ 'A:arrays',
"      \ 'P:properties',
"      \ 'T:tags',
"      \ 'O:objects',
"      \ 'G:generator functions',
"      \ 'F:functions',
"      \ 'C:constructors/classes',
"      \ 'M:methods',
"      \ 'V:variables',
"      \ 'I:imports',
"      \ 'E:exports',
"      \ 'S:styled components',
"      \ ]}

" Easier window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tab navigation 
" (ref: https://vim.fandom.com/wiki/Alternative_tab_navigation)
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
" nnoremap th :tabnext<CR>
" nnoremap tl :tabprev<CR>
" nnoremap tn :tabnew<CR>

" vim-javascript # jsdocs
let g:javascript_plugin_jsdoc = 1
" vim javascript # concealing characters
set conceallevel=1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

