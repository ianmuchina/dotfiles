" Load Plugins
source $HOME/.config/nvim/plugin/plugins.vim

" Setup Vim Lsp
lua require'lspconfig'.pyright.setup{}
