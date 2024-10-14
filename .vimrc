
" Automatically wrap text that extends beyond the screen length
set wrap

"key bindings
inoremap <C-C> <Esc>

" highlight search
:set hlsearch

" Encoding
set encoding=utf-8

:set number

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

" Status bar
set laststatus=2

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

" Enable search highlighting
set hlsearch

" Highlight leading and trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/