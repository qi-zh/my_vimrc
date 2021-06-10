set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"set textwidth=79
" brows file by netrw
nmap <leader>f :Explore<CR>
nmap <leader><s-f> :edit.<CR>
let g:netrw_altv = 1
let g:netrw_dirhistmax = 0

set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8

call plug#begin('~/.vim/plugged')
Plug 'nvim-telescope/telescope.nvim'
Plug 'jpalardy/vim-slime'
"Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
call plug#end()

colorscheme industry 
" vim-slime setting
let g:slime_target = "tmux"
let g:slime_python_ipython = 1
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}

" flip to foler
nmap <leader>f :Explore<CR>
nmap <leader><s-f> :edit.<CR>
let g:netrw_altv = 1
let g:netrw_dirhistmax = 0
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" you complete me setting
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on

" short cut to insert ipdb trace point
nnoremap <leader>p oimport ipdb; ipdb.set_trace()<Esc>
nnoremap <leader><s-p> ofrom pudb.remote import set_trace; set_trace(term_size=(250, 70))<Esc>

" Kite auto complete
let g:kite_auto_complete=0
let g:kite_snippets=0
let g:kite_tab_complete=1
