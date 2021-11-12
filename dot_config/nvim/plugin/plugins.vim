call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'mhinz/vim-startify'           " Welcome Screen

    Plug 'preservim/nerdtree'           " File Explorer (VimL)
    Plug 'kyazdani42/nvim-tree.lua'     " File Explorer (Lua)

    Plug 'nvim-telescope/telescope.nvim'" Fuzzy Finder

    Plug 'sheerun/vim-polyglot'         " Better Syntax Support
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'jiangmiao/auto-pairs'         " Auto pairs for '(' '[' '{'

"   Plug 'itchyny/lightline.vim'        " Status Line (VimL)
    Plug 'glepnir/galaxyline.nvim',     " Status Line (lua)
    
    Plug 'wakatime/vim-wakatime'        " Wakatime
    Plug 'romgrk/barbar.nvim'           " Tabline
    Plug 'lewis6991/gitsigns.nvim'      " Git decoration
    Plug 'nvim-lua/plenary.nvim'        " Lua Funtions for nvim

"   Plug 'liuchengxu/vim-which-key'     " (TODO) Which Key
"   Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'p00f/nvim-ts-rainbow'         " Rainbow Parens (TreeSitter)
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

    Plug 'neovim/nvim-lspconfig'           " LSP config
    Plug 'williamboman/nvim-lsp-installer' " LSP installer
    Plug 'folke/trouble.nvim'              " LSP panel

    " Auto Completion
    Plug 'ms-jpq/coq_nvim',       {'branch': 'coq'}
    Plug 'ms-jpq/coq.artifacts',  {'branch': 'artifacts'}
    Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
    "   Colors
    Plug 'joshdick/onedark.vim'
    Plug 'folke/lsp-colors.nvim'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

    Plug 'kyazdani42/nvim-web-devicons' " Icons (VimL)
    Plug 'ryanoasis/vim-devicons'       " Icons (Lua)

call plug#end()
