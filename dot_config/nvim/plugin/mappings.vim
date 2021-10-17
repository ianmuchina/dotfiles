" set leader key
let g:mapleader = "\<Space>"


" Save file with ctrl + s
nnoremap <silent><C-s> :<c-u>update<cr>
vnoremap <silent><C-s> <c-c>:update<cr>gv
inoremap <silent><C-s> <c-o>:update<cr>

" move between buffers
map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR>

" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferGoto 9<CR>


" " ctrl-p plugin shortcut
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'

" "Avoid the Escape key
" imap jj <Esc>
