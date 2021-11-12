" Defaults that I mostly copied from the internet
" filetype plugin on
" set autoindent              " indent a new line the same amount as the line just typed
"set fillchars=fold:\ ,vert:\│,eob:\ ,m:sgsep:‾  "Remove annoying tilde
cmap w!! w !sudo tee %                  " You can't stop me
colorscheme flavours 
set autochdir                           " Your working directory will always be the same as your working directory
set autoindent                          " Good auto indent
"set background=dark                     " tell vim what the background color looks like
set backupdir=~/.cache/nvim-backups/ " Directory to store backup files.
set cc=80                   " set an 80 column border for good coding style
set clipboard=unnamedplus               " Copy paste between vim and everything else
set cmdheight=2                         " More space for displaying messages
set conceallevel=0                      " So that I can see `` in markdown files
set cursorline                          " Enable highlighting of the current line
set encoding=utf-8                      " The encoding displayed
set expandtab                           " Converts tabs to spaces
set fileencoding=utf-8                  " The encoding written to file
set formatoptions-=cro                  " Stop newline continution of comments
set hidden                              " Required to keep multiple buffers open multiple buffers
set hlsearch                            " highlight search 
set iskeyword+=-                      	" Treat dash separated words as a word text object
set laststatus=2                        " Always display the status line
set mouse=a                             " Enable your mouse
set nobackup                            " This is recommended by coc
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nowrap                              " Display long lines as just one line
set nowritebackup                       " This is recommended by coc
set number                              " Line numbers
set pumheight=10                        " Makes popup menu smaller
set ruler              			            " Show the cursor position all the time
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set showtabline=2                       " Always show tabs
set smartindent                         " Makes indenting smart
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set tabstop=2                           " Insert 2 spaces for a tab
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set ttyfast                 " Speed up scrolling in Vim
set updatetime=300                      " Faster completion
syntax enable                           " Enables syntax highlighing

lua vim.g.coq_settings = { auto_start = true and 'shut-up' }

au! BufWritePost $NVIMRC source %       " auto source when writing to init.vim alternatively you can run :source $MYVIMRC
