" Set 24-bit color
if (has("termguicolors"))
    set termguicolors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    hi LineNr ctermbg=NONE guibg=NONE
endif

" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" If you're using tmux version 2.2 or later, you can remove the outermost $TMUX 
" check and use tmux's 24-bit color support
" see https://sunaku.github.io/tmux-24bit-color.html#usage
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799
  "Based on Vim patch 7.4.1770 (`guicolors` option) 

  "https://github.com/vim/vim/commit/61be73bb0
  "https://github.com/vim/vim/commit/8a633e342
  "https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
  
  if (has("termguicolors"))
    set termguicolors
  endif
endif
