set nocompatible              " be iMproved (required because it'll break vi)

syntax on
filetype off                  " required

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmatch
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" Highlight current line in active window
augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'

" Base16 Colours
if &t_Co < 256
    colorscheme default
    set nocursorline " looks bad in this mode
else
    colorscheme base16-default
    set background=dark
endif

" Airline hax
set laststatus=2
let g:airline_powerline_fonts=1
set ttimeoutlen=50
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'

" All plugins must be added before the following line
" call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line