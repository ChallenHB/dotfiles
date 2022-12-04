if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic'

" Plug 'vim-scripts/paredit.vim'
"
Plug 'tpope/vim-sensible'

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'snoe/vim-sexp'
" let g:sexp_enable_insert_mode_mappings = 1

" I can't get Meta working in Iterm2 so I'm going to map the import clojure
" commands
"

" Barf head
nmap <Leader>bh <Plug>(sexp_emit_head_element)
" Barf tail
nmap <Leader>bt <Plug>(sexp_emit_tail_element)
" Slurp previous
nmap <Leader>sp <Plug>(sexp_capture_prev_element)
" Slurp next
nmap <Leader>sn <Plug>(sexp_capture_next_element)

Plug 'guns/vim-clojure-static'

Plug 'guns/vim-clojure-highlight'

Plug 'kien/rainbow_parentheses.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': '.install --all' }

Plug 'junegunn/fzf.vim'

Plug 'kburdett/vim-nuuid'

Plug 'itchyny/lightline.vim'

Plug 'airblade/vim-gitgutter'

" File explorer
Plug 'preservim/nerdtree'

" Set key to toggle nerd tree
map <C-n> :NERDTreeToggle<CR>

Plug 'tpope/vim-fugitive'

" Rust stuff
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" Colorschemes :)

Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'bluz71/vim-moonfly-colors'

Plug 'ayu-theme/ayu-vim'

Plug 'morhetz/gruvbox'

Plug 'haishanh/night-owl.vim'

let g:racer_cmd="/Users/challen.hb/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

augroup Racer
    autocmd!
    autocmd FileType rust nmap <buffer> gd         <Plug>(rust-def)
    autocmd FileType rust nmap <buffer> gs         <Plug>(rust-def-split)
    autocmd FileType rust nmap <buffer> gx         <Plug>(rust-def-vertical)
    autocmd FileType rust nmap <buffer> gt         <Plug>(rust-def-tab)
    autocmd FileType rust nmap <buffer> <leader>gd <Plug>(rust-doc)
    autocmd FileType rust nmap <buffer> <leader>gD <Plug>(rust-doc-tab)
augroup END


call plug#end()

if has('nvim') || has('termguicolors')
   set termguicolors
endif


syntax enable
filetype plugin indent on

colorscheme night-owl

set nu
set ruler              " show the line number on the bar
set bs=2               " make backspace work
set autoread           " autoreload the file after !shell commands
set magic              " mostly same regex rules as grep
set scrolloff=3        " leave 3 lines between the cursor and the top/bot of screen
set showcmd            " show a command in progress in the bar (eg a long command involving <leader>)
set spl=en_us          " use English for spellchecking
set nospell            " don't spellcheck by default
set showmatch          " highlight the matching brace/paren/bracket
set nohlsearch         " don't highlight search (<leader>hl toggles)
set incsearch          " start searching when you type the first character
set hidden             " when I close a tab, remove the buffer -- NOT. Adding this 3/5/2021
set showmode           " show insert/visual/normal in the status line
set nowrap             " I like it like that
set cpo+=J             " a sentence has to be followed by two spaces after a ., !, or ?
set fo-=c              " automatically text wrap comments
set fo-=o              " automatically insert current comment leader when you hit o or O

set tabstop=2          " I prefer 3 spaces for tab
set shiftwidth=3
set shiftround         " Round indent to nearest multiple of shiftwidth
set smarttab
set expandtab
set autoindent
set smartindent
set updatetime=100

" Exit insert mode by mashing jk
inoremap <C-f> <C-o>l
"set timeout timeoutlen=3000 ttimeoutlen=200

let g:paredit_mode = 1

hi MatchParen cterm=underline 
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Configure status line colors
let g:lightline = {
   \ 'colorscheme': 'wombat',
   \ }
