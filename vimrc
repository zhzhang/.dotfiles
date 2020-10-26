syntax enable
colorscheme elflord
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
call matchadd('ColorColumn', '\%88v', 100) 
"make trailing spaces and tabs stand out 
set listchars=tab:>~,nbsp:_,trail:.
set list
autocmd BufNewFile,BufReadPost *.hn set filetype=cpp
"map semicolon to colon
nnoremap ; :
nnoremap : ;
" Reduce split navigation by a keystroke
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" More sensible split opening
set splitbelow
set splitright

filetype on

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

autocmd FileType python setlocal ts=4 sts=4 sw=4

noremap <leader>. :CtrlPTag<cr>

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-ruby/vim-ruby'
Plug 'jalvesaq/NVim-R'
call plug#end()

let g:javascript_plugin_flow = 1

let b:ale_linters = {
\  'javascript': ['eslint'],
\  'python': ['flake8', 'pylint']
\}
let g:ale_fixers = {
\  'javascript': ['prettier', 'eslint'],
\  'python': ['black']
\}
let g:ale_fix_on_save = 1

" FZF settings
let g:ag_working_path_mode="r"
noremap <leader>t :GFiles --exclude-standard --others --cached<cr>
noremap <leader>g :Ag<cr>
