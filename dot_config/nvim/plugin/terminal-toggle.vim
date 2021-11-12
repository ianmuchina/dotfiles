" Toggle terminal with alt `
nnoremap <silent><A-`> :call TermToggle(12)<CR>
inoremap <silent><A-`> <Esc>:call TermToggle(12)<CR>
tnoremap <silent><A-`> <C-\><C-n>:call TermToggle(12)<CR>

" Enter insert mode in terminal by default
augroup neovim_terminal
    autocmd!
    " Enter Terminal-mode (insert) automatically
    autocmd TermOpen * startinsert
    " Disables number lines on terminal buffers
    autocmd TermOpen * :set nonumber norelativenumber
    " allows you to use Ctrl-c on terminal window
    autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>
augroup END

let s:term_buf = 0
let s:term_win = 0

"Function to Toggle terminal on bottom of screen
function! TermToggle(height)
    if win_gotoid(s:term_win)
        hide
    else
        new terminal
        exec "resize " . a:height
        try
            exec "buffer " . s:term_buf
            exec "bd terminal"
        catch

            call termopen($SHELL, {"detach": 0})
            let s:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
            set nocursorline
        endtry
        startinsert!
        let s:term_win = win_getid()
    endif
endfunction
