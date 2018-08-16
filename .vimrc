" Putting this here for now: set column to 290 and row to 80 to get the
" terminal to open in full screen :)

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic'

Plug 'vim-scripts/paredit.vim' 

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'guns/vim-clojure-static'

Plug 'guns/vim-clojure-highlight'

Plug 'kien/rainbow_parentheses.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': '.install --all' }

Plug 'junegunn/fzf.vim'

Plug 'kburdett/vim-nuuid'

Plug 'itchyny/lightline.vim'

Plug 'airblade/vim-gitgutter'

" Colorschemes :)

Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

call plug#end()

if has('nvim') || has('termguicolors')
   set termguicolors
endif

colorscheme challenger_deep

syntax on
filetype plugin indent on

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
set nohidden           " when I close a tab, remove the buffer
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
inoremap jk <Esc>:w<CR>
inoremap kj <Esc>:w<CR>
inoremap <C-f> <C-o>l
"set timeout timeoutlen=3000 ttimeoutlen=200

hi MatchParen cterm=underline 
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Configure status line colors
let g:lightline = {
   \ 'colorscheme': 'wombat',
   \ }
