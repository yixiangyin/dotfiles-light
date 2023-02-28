"load the previous config in vim
" This file is my vim config. only enable the things I understand
" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting.
syntax enable

" Disable the default Vim startup message.
set shortmess+=I


" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
"set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=
set belloff=all
" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" It displays your keystrokes in statusline as you enter them.a
set showcmd
" display the mode message in White color
hi ModeMsg ctermfg=White
"  Use this option to change the mapping to invoke CtrlP in |Normal| mode
let g:ctrlp_map = '<c-p>'
" Set the default opening command to use when pressing the above mapping
let g:ctrlp_cmd = 'CtrlP'
	
"This will insert four spaces instead of a tab character. Spaces are a bit more “stable”, meaning that text indented with spaces will show up the same in the browser and any other application.
set tabstop=2
set shiftwidth=4
set expandtab


"Mode Settings

"let &t_SI.="\e[2 q" "SI = INSERT mode
"let &t_SR.="\e[2 q" "SR = REPLACE mode
"let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

" display data and time in the status bar
set ruler
set rulerformat=%55(%{strftime('%I:%M\ %p')}\%5l,%-6(%c%V%)\%P%)
" update every 4 seconds
let timer = timer_start(4000, 'UpdateStatusBar',{'repeat':-1})
function! UpdateStatusBar(timer)
  execute 'let &ro = &ro'
endfunction


" copy from anish

"set autoindent
"set hls
"set lbr
"set timeout timeoutlen=1000 ttimeoutlen=100
"set autochdir
"set nojoinspaces
"set nofoldenable
"
"set splitright
"set splitbelow
" quicker window movement

"highlight the current line where the cursor is at
augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END



" solarized theme
"set background=dark
"let g:solarized_termcolors=256 " instead of 16 color with mapping in terminal
"colorscheme solarized

" vscode dark theme
" If you don't like many colors and prefer the conservative style of the standard Visual Studio
let g:codedark_conservative=1
" Activates italicized comments (make sure your terminal supports italics)
"let g:codedark_italics=1
" Make the background transparent
"let g:codedark_transparent=1
" If you have vim-airline, you can also enable the provided theme
"let g:airline_theme = 'codedark'
colorscheme codedark

" customized colors
"highlight SignColumn ctermbg=234
"highlight StatusLine cterm=bold 
"highlight StatusLineNC cterm=bold
"let g:lightline = {'colorscheme': 'dark'}
"highlight SpellBad cterm=underline
"
" remove underline in cursorLineNnumber; move it above seems not working
"highlight CursorLineNr cterm=NONE

:set number
set relativenumber


set rtp+=/usr/local/opt/fzf
set autoindent

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
" inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
