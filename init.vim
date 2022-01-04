" Plugins
call plug#begin()
" File browser
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
" Finder
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
" Colorschemes
Plug 'joshdick/onedark.vim'
" Code
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'uiiaoo/java-syntax.vim'
call plug#end()

" General
set encoding=utf8
set title
set number relativenumber
set encoding=utf8
set incsearch
set hlsearch
set ignorecase
set showmatch
set showcmd
set noerrorbells
set wildmenu
set mouse+=a
autocmd FileType * setlocal formatoptions -=c formatoptions -=r formatoptions -=o
set backspace=eol,start,indent
set clipboard=unnamedplus
let mapleader=" "
highlight link javaIdentifier NONE
set shm+=I

" Colorschemes
set termguicolors
syntax on
set cursorline
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
colorscheme onedark

" Indenting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set list lcs=tab:\|\ 

" Backup
set undofile

" Splits
set splitright
set splitbelow
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap vv <C-W>v
nnoremap ss <C-W>s

" Mappings
" Compile and Run Java
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
nnoremap <Leader>c :make<Return>:copen<Return>
nnoremap <Leader>m :cprevious<Return>
nnoremap <Leader>r :!java %:t:r<CR>

" Turn off search highlight
nnoremap <Leader><space> :nohlsearch<CR>

" FZF
nnoremap <Leader>f :FZF<CR>

" NERDTree
nnoremap <Leader>n :NERDTreeToggle<CR>

" Code Directory
nnoremap <Leader>j :cd ~\IdeaProjects\javaC0de\src\<CR>

" Open buffer
nnoremap <Leader>q :e ~\OneDrive\Text\buffer.txt<CR>

" Open Nvim Config
nnoremap <Leader>ev :e $MYVIMRC<CR>

" Plugin Config
" Airline
set laststatus=0
set cmdheight=1
let g:airline_powerline_fonts = 1

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
let g:NERDTreeGitStatusConcealBrackets = 1

" Coc.nvim
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
let g:NERDTreeGitStatusConcealBrackets = 1
