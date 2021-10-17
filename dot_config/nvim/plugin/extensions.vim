" Plugins
call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'mhinz/vim-startify'           " Welcome Screen
    Plug 'kyazdani42/nvim-web-devicons' " Icons (VimL)
    Plug 'ryanoasis/vim-devicons'       " Icons (Lua)
    Plug 'sheerun/vim-polyglot'         " Better Syntax Support
    Plug 'preservim/nerdtree'           " File Explorer (VimL)
    Plug 'kyazdani42/nvim-tree.lua'     " File Explorer (Lua)
    Plug 'liuchengxu/vim-which-key'     " (TODO) Which Key
    Plug 'jiangmiao/auto-pairs'         " Auto pairs for '(' '[' '{'
    Plug 'itchyny/lightline.vim'        " Status Line
    Plug 'glepnir/galaxyline.nvim',     " Status Line
    Plug 'rrethy/vim-hexokinase',       " Hex Colors
\      { 'do': 'make hexokinase' }      " Compile Hex Colors
    Plug 'wakatime/vim-wakatime'        " Wakatime
    Plug 'romgrk/barbar.nvim'           " (TODO) Tabline
    Plug 'lewis6991/gitsigns.nvim'      " Git decorations
    Plug 'nvim-lua/plenary.nvim'        " Lua Funtions for nvim
    Plug 'kien/ctrlp.vim'
    Plug 'junegunn/rainbow_parentheses.vim'
call plug#end()
