"plugins 
"silent call plug#begin(stdpath('data'))
"call plug#begin()
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
silent! call plug#begin(stdpath('data'))

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ervandew/supertab'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'flazz/vim-colorschemes'
Plug 'davidhalter/jedi-vim'
"Plug 'valloric/youcompleteme'
Plug 'shougo/deoplete.nvim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'preservim/nerdcommenter'

call plug#end()


"settings

set encoding=utf-8
set autoindent
set smartindent
set autoread
set cin
set expandtab
set history=1000
set hlsearch
set ignorecase
set mousehide
set incsearch
set noerrorbells
set noswapfile
set number
set pastetoggle=
set shiftwidth=4
set smarttab
set tabstop=4
"set vb t_vb=
set relativenumber
"clears highlights
nnoremap // :noh<return>


"extra settings 
set clipboard=unnamed " public copy/paste register
syntax on
filetype on
filetype plugin on
"autocmd FileType cpp setlocal makeprg=g\+\+ %\ \-g\ \-std\=c\+\+17\ \-Wall
filetype indent on


"ui settings
let g:airline_theme= 'molokai'
let g:airtline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1
highlight Comment cterm=italic gui=italic
colorscheme molokai
set t_Co=256

"if !exists('g:airline_symbols')
"    let g:airline_symbols = {} 
"endif
"if (has("nvim"))
"  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"endif
"if (has("termguicolors"))
"  set termguicolors
"endif

"competitive programming with c++ settings
"nnoremap <c-p> :Files<cr>
nnoremap <c-p> :Explore<cr>
" c++11 support in syntastic
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = ' -std=c++11'


noremap <F1> <ESC>:tabprev <CR>
vnoremap <F1> <ESC>:tabprev <CR>
inoremap <F1> <ESC>
 
noremap <F3> <ESC> :w <CR> :make <CR>
inoremap <F3> <ESC> :w <CR> :make <CR>
 
"noremap <F4> <ESC> :w <CR> :!pycodestyle %<.py <CR>
"inoremap <F4> <ESC> :w <CR> :!pycodestyle %<.py <CR>
 
"noremap <F5> <ESC> :w <CR> :!pytest %<.py <CR>
"inoremap <F5> <ESC> :w <CR> :!pytest %<.py <CR>
 
"noremap <F6> <ESC> :!./%< < inp<CR>
"inoremap <F6> <ESC> :!./%< < inp<CR>
 
noremap <F7> <ESC> :w !python3 <CR>
 
"noremap <F7> <ESC> :w <CR> :!avr-gcc -g -std=c99 -O1 -mmcu=atmega328p -o out.elf example.c<CR>
"noremap <F6> <ESC> :w <CR> :!avrdude -v -patmega328p -P /dev/cu.usbmodem14* -c arduino -U flash:w:"out.elf"<CR>
"noremap <F5> <ESC> :w <CR> :!avrdude -v -patmega328p -P /dev/cu.usbmodemHID* -c arduino -U flash:w:"out.elf"<CR>
 
noremap <F5> <ESC> :w <CR> :!g++ std=c++14  -O2 -Wall "%<" "%"  <CR> 
inoremap <F5> <ESC> :w <CR> :!g++ -std=c++14 -O2 -Wall  "%<" "%"  <CR>
noremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++14 -DONPC -O2 -o %< % && ./%< < input.txt<CR>
inoremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++14 -DONPC -O2 -o "%<" "%" && "./%<" < input.txt<CR>
 
" -pthread
 
noremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++14 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
inoremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++14 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
 
"noremap <F10> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
"inoremap <F10> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
 
 
noremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++14 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < input.txt<CR>
inoremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++14 -Wall -Wextra -Wshadow -DONPC -O2 -o "%<" "%" && "./%<" < input.txt<CR>
 
 
 
"inoremap {<CR> {<CR>}<ESC>k$A<CR>
 
noremap <TAB> %
