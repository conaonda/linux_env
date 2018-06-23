set backspace=2
set cindent
set cinoptions=g0
set cursorline " highlight current line
set expandtab
set hlsearch " highlight matches
set incsearch " search as characters are entered
set number
set nocompatible
set shiftwidth=4
set showcmd " show command in bottom bar
set showmatch " highlight matching [{()}]
set softtabstop=4 " number of spaces in tab when editing
set tabstop=4
set wildmenu " visual autocomplete for command menu
set encoding=utf-8

syntax enable
syntax on
filetype off
filetype plugin indent on

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
"Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'scrooloose/syntastic'
"Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'davidhalter/jedi-vim'
Plugin 'Syntastic'


call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on

" Put your non-Plugin stuff after this line

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:airline#extensions#tabline#enabled = 1
let g:ycm_add_preview_to_completeopt = 1
let g:airline_powerline_fonts = 1
let g:ycm_key_list_stop_completion = ['<Enter>']
"let g:ycm_keep_logfiles = 1
"let g:ycm_log_level = 'debug'
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_key_list_select_completion = ['', '']
"let g:ycm_key_list_previous_completion = ['', '']
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_warning_symbol = '>*'
" Apply YCM FixIt
let g:syntastic_python_checkers = [ 'pep8' ]
"let g:syntastic_python_checkers = [ 'flake8' ]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <F9> :YcmCompleter FixIt<CR>
nnoremap <leader>p :psearch <C-R><C-W><CR>
nnoremap <leader>r :%s/<C-R><C-W>/
nnoremap <C-n> :bnext!<CR>
nnoremap <C-p> :bprevious!<CR>
noremap <S-s><S-s> :w<CR> 
noremap <PageUp> <C-u>
noremap <PageDown> <C-d>
inoremap <PageUp> <C-O><C-u>
inoremap <PageDown> <C-O><C-d>
noremap <expr> <Home> (col('.') == matchend(getline('.'), '^\s*')+1 ? '0' : '^')
noremap <expr> <End> (col('.') == match(getline('.'), '\s*$') ? '$' : 'g_')
vnoremap <expr> <End> (col('.') == match(getline('.'), '\s*$') ? '$h' : 'g_')
imap <Home> <C-o><Home>
imap <End> <C-o><End>
inoremap <C-Up> <C-O><C-y>
inoremap <C-Down> <C-O><C-e>
nmap <C-Up> <C-y>
nmap <C-Down> <C-e>
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" space open/closes folds
nnoremap <space> za
" move to beginning/end of line
nnoremap B ^
nnoremap E $
"nnoremap g :YcmCompleter GoTo "
"nnoremap gg :YcmCompleter GoToImprecise
"nnoremap d :YcmCompleter GoToDeclaration
"nnoremap t :YcmCompleter GetType
"nnoremap p :YcmCompleter GetParent


hi YcmErrorSection ctermbg=darkblue
hi clear MatchParen
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
hi DiffText cterm=bold ctermfg=black
hi DiffChange ctermfg=black
hi CursorLine cterm=None ctermbg=236
