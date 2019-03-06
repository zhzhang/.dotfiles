execute pathogen#infect()
syntax enable
set autochdir
set backspace=indent,eol,start
set hidden
set nu
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present
set tags=./tags,tags;
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
set nocompatible
set noswapfile
nmap <F8> :TagbarToggle<CR>


"highlight all matches
set hlsearch
" Make 81st column standout
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100) 
"make trailing spaces and tabs stand out 
set listchars=tab:>~,nbsp:_,trail:.
set list
autocmd BufNewFile,BufReadPost *.hn set filetype=cpp
"map semicolon to colon
nnoremap ; :
nnoremap : ;


filetype on
filetype plugin on
filetype indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab

"inoremap <Left>  <NOP>
"inoremap <Right> <NOP>
"inoremap <Up>    <NOP>
"inoremap <Down>  <NOP>
"noremap <Left>  <NOP>
"noremap <Right> <NOP>
"noremap <Up>    <NOP>
"noremap <Down>  <NOP>
"noremap <Left>  <NOP>

noremap <leader>. :CtrlPTag<cr>

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'Chiel92/vim-autoformat'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()

let g:ale_lint_on_text_changed = 'never'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
