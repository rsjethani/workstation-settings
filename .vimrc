syntax on

"colo desert

"set showmode
set number

set hlsearch

" Flash screen instead of beep sound
set visualbell

" Change how vim represents characters on the screen
set encoding=utf-8

" Set the encoding of files written
set fileencoding=utf-8

syntax on
filetype plugin indent on

autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

set shiftwidth=4

set backspace=indent,eol,start

au BufNewFile,BufRead *.py call SetPythonOptions()
function SetPythonOptions()
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set autoindent
    set fileformat=unix
endfunction

let g:rustfmt_autosave=1

au BufNewFile,BufRead *.rs,*.tf call SetRustOptions()
function SetRustOptions()
    set softtabstop=4
    set shiftwidth=4
    set cindent
    set fileformat=unix
endfunction

au BufNewFile,BufRead *.yml,*.yaml call SetYAMLOptions()
function SetYAMLOptions()
    set softtabstop=2
    set shiftwidth=2
    set expandtab
    set autoindent
    set fileformat=unix
endfunction

"au BufNewFile,BufRead *.c,*.cpp,*.h,*.json,*.sh,*.go call SetCLikeOptions()
"function SetCLikeOptions()
"    set cindent
"    set fileformat=unix
"endfunction

filetype plugin indent on

" air-line plugin specific commands
let g:airline_powerline_fonts = 1


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
"augroup ProjectDrawer
"  autocmd!
"  " '%:h' represents current directory
"  autocmd VimEnter * :Vexplore
"augroup END

" focus on the 1st file opened and not the side bar
au VimEnter * wincmd l

" if you do not want sidebar everytime then disable above augroup...END and
" enable below commnad
nnoremap <C-g> :Vexplore<CR>
