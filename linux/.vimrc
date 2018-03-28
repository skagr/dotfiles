""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug config 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'crusoexia/vim-monokai'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
colorscheme monokai

" Fix bg color in tmux
set t_ut=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
" http://sukiand.github.io/2016/02/12/Color%20config%20for%20putty-vim/#putty-airline-seperator-font-problem
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme = 'badwolf'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" maxlinenr == column number symbol
let g:airline_symbols.maxlinenr = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number

" Fix delay when switching from INSERT to NORMAL
set ttimeoutlen=50

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sensible Vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Makes :set list (visible whitespace) prettier
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

" Always show at least one line above/below the cursor
if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number

" Spaces instead of tabs
" Fix entire file with :retab
set expandtab
set tabstop=4
set shiftwidth=4

" Splits
" Split with :sp or :vsp
" Navigate with C-[hjkl]
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
