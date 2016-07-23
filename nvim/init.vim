" Plugins

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-dispatch'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'flazz/vim-colorschemes'

call plug#end()

" Basic settings --------------------- {{{
set number
set nowrap
set textwidth=0 smartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set backspace=indent,eol,start
set statusline=%f  "Path to the file
set statusline+=%= "Swith to right side
set statusline+=%l "Current line
set statusline+=\  "Separator
set statusline+=%L "Total lines
" }}}

" Mappings
nnoremap <leader>vs :execute "rightbelow vsplit " . bufname("#")<cr>
noremap - ddp
noremap _ ddkP
nnoremap <C-p> :Files<cr>

" Capitalize current word
inoremap <c-u> <esc>viwUeli
nnoremap <c-u> viwUel

let mapleader = ","
let maplocalleader = "\\"

" meta awesomeness
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

iabbrev sigg -- <cr>Jphoenix<cr>jphoenx@gmail.com
iabbrev @@ jpholzmann@gmail.com

" Movement
nnoremap H I<esc>
nnoremap L A<esc>

vnoremap <leader>s" <esc>`>a"<esc>`<i"<esc>
vnoremap <leader>s' <esc>`>a'<esc>`<i'<esc>

" Habits
inoremap jk <esc>

" FileType Specific settings --------------------- {{{
" augroup filetype_javascript
" 	autocmd!
" 	autocmd FileType javascript setlocal nolist
" 	autocmd FileType javascript :iabbrev <buffer> iff if:<left>
" 	autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
" augroup END

augroup filetype_clojure
	autocmd!
 	autocmd FileType clojure nnoremap <buffer> <localleader>c I;;;;<esc>
augroup END

augroup filetype_html
	autocmd!
 	autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

augroup filetype_markdown
  onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
  onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
augroup END

augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Snippets --------------------- {{{
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap an( :<c-u>normal! f(va(<cr>
onoremap al( :<c-u>normal! F(va(<cr>
" }}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"original

" execute pathogen#infect()

syntax on
filetype plugin indent on

" Rainbow Parenthesis --------------------- {{{
" autocmd VimEnter *       RainbowParenthesesToggle
" autocmd Syntax   clojure RainbowParenthesesLoadRound
" autocmd Syntax   clojure RainbowParenthesesLoadSquare
" autocmd Syntax   clojure RainbowParenthesesLoadBraces
" }}}

" set hlsearch
set ts=2

" COLORS
colorscheme hybrid
set background=dark


map <leader>tt :NERDTreeToggle<cr>

" Fast screen switching --------------------- {{{
nnoremap <C-J> <C-W>j<C-W>_
nnoremap <C-K> <C-W>k<C-W>_
nnoremap <C-H> <C-W>h<C-W>_
nnoremap <C-L> <C-W>l<C-W>_
" }}}
