" Auto Download Plugins
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'preservim/nerdtree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Status Line
    Plug 'itchyny/lightline.vim'
    "Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
    " Track my coding progress
    Plug 'wakatime/vim-wakatime'
    "Colorscheme
    "Plug 'joshdick/onedark.vim'
    Plug 'drewtempelmeyer/palenight.vim'

    "Brackets Pair Colorizer
    Plug 'junegunn/rainbow_parentheses.vim'


    " If you want to display icons, then use one of these plugins:
    "Plug 'kyazdani42/nvim-web-devicons' " lua
    "Plug 'ryanoasis/vim-devicons' " vimscript

call plug#end()

let g:palenight_color_overrides = { 
\ "red": { "gui": "#ff6d7e", "cterm": "204", "cterm16": "1" },
\ "light_red": { "gui": "#ff869a", "cterm": "204", "cterm16": "1" },
\ "dark_red": { "gui": "#BE5046", "cterm": "196", "cterm16": "9" },
\ "green": { "gui": "#a2e57b", "cterm": "114", "cterm16": "2" },
\ "yellow": { "gui": "#ffed72", "cterm": "180", "cterm16": "3" },
\ "dark_yellow": { "gui": "#F78C6C", "cterm": "173", "cterm16": "11" },
\ "blue": { "gui": "#82b1ff", "cterm": "39", "cterm16": "4" },
\ "purple": { "gui": "#baa0f8", "cterm": "170", "cterm16": "5" },
\ "blue_purple": { "gui": "#939ede", "cterm": "39", "cterm16": "4"},
\ "cyan": { "gui": "#7cd5f1", "cterm": "38", "cterm16": "6" },
\ "white": { "gui": "#f2fffc", "cterm": "145", "cterm16": "7" },
\ "black": { "gui": "#131519", "cterm": "235", "cterm16": "0" },
\ "visual_black": { "gui": "NONE", "cterm": "NONE", "cterm16": "0" },
\ "comment_grey": { "gui": "#596678", "cterm": "59", "cterm16": "15" },
\ "gutter_fg_grey": { "gui": "#4B5263", "cterm": "238", "cterm16": "15" },
\ "cursor_grey": { "gui": "#2C323C", "cterm": "236", "cterm16": "8" },
\ "visual_grey": { "gui": "#3E4452", "cterm": "237", "cterm16": "15" },
\ "menu_grey": { "gui": "#3E4452", "cterm": "237", "cterm16": "8" },
\ "special_grey": { "gui": "#3B4048", "cterm": "238", "cterm16": "15" },
\ "vertsplit": { "gui": "#181A1F", "cterm": "59", "cterm16": "15" },
\ "white_mask_1": { "gui": "#343a46", "cterm": "237", "cterm16": "15" },
\ "white_mask_3": { "gui": "#454e5e", "cterm": "238", "cterm16": "15" },
\ "white_mask_11": { "gui": "#6895a8", "cterm": "238", "cterm16": "15" }
\}

" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %

syntax on

" Colors
hi Comment cterm=italic
let g:palenight_hide_endofbuffer=1
let g:palenight_terminal_italics=1
let g:palenight_termcolors=256

syntax on

"Theme & colors
colorscheme palenight

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" Lightline theme
let g:lightline = {'colorscheme': 'palenight',}

" Activate rainbow Parentheses. Like Brackets pair colorizer

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

" List of colors that you do not want. ANSI code or #RRGGBB
let g:rainbow#blacklist = [233, 234]

"============================================================
" Mappings
"============================================================
" ctrl-p plugin shortcut
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'

"Avoid the Escape key
imap jj <Esc>

" move between buffers
map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR>

" Nerd Tree toggling
map <C-b> :NERDTreeToggle<CR>

" move lines up and down
"nnoremap <C-j> :m .+1<CR>==
"nnoremap <C-k> :m .-2<CR>==
"inoremap <C-j> <Esc>:m .+1<CR>==gi
"inoremap <C-k> <Esc>:m .-2<CR>==gi
"vnoremap <C-j> :m '>+1<CR>gv=gv
"vnoremap <C-k> :m '<-2<CR>gv=gv

" switch to left / right split (mostly for Nerd Tree)
map <C-h> <C-W>h
map <C-l> <C-W>l

