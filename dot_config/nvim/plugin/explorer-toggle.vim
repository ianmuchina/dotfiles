let s:ExplorerOpen = 0

function! ExplorerToggle()
    "Open
    if s:ExplorerOpen
        
        let s:ExplorerOpen = 0
        lua require'bufferline.state'.set_offset(31, 'Explorer')
        NERDTree

    " Close
    else
        
        let s:ExplorerOpen = 1
        lua require'bufferline.state'.set_offset(0)
        NERDTreeClose

    endif
endfunction
" File Manager
" Nerd Tree toggle
map <C-b> :call ExplorerToggle()<CR>


" NvimTree toggling
"nnoremap <C-b> :NvimTreeToggle<CR>
"nnoremap <leader>r :NvimTreeRefresh<CR>
"nnoremap <leader>n :NvimTreeFindFile<CR>


" NvimTree toggling
"nnoremap <C-b> :NvimTreeToggle<CR>
"nnoremap <leader>r :NvimTreeRefresh<CR>
"nnoremap <leader>n :NvimTreeFindFile<CR>
