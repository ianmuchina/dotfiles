" Minor Config, mostly copied from documentation
" Gitsigns
lua require('gitsigns').setup()

" NvimTree
lua require('nvim-tree').setup()

"Hexoinase
let g:Hexokinase_optInPatterns = ['full_hex', 'triple_hex', 'rgb', 'rgba', 'hsl', 'hsla',]
let g:Hexokinase_ftEnabled = ['css', 'html', 'javascript', 'scss', 'yaml', 'yml', 'json']

" LightLine
let g:lightline = {}
let g:lightline.colorscheme = 'flavours'

" Rainbow Parentheses
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]
let g:rainbow#blacklist = [233, 234]

" Show Bookmarks in nerdtree
let g:NERDTreeShowBookmarks = 1
