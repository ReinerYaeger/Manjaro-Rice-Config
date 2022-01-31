set number
set list
set shiftwidth=4
set tabstop=4
set hidden
set termguicolors
set undofile
set spell
set ignorecase
set title
set omnifunc=syntaxcomplete#Complete
set laststatus=1
set ignorecase
set smartcase
set mouse+=a
set splitright
set clipboard=unnamedplus
set confirm
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//
set hlsearch!
set spelllang=en
set wildmenu
set undofile
set incsearch
set nocompatible
set nowrap

" Mapping

let mapleader = ","

map <C-DOWN> <C-W>j
map <C-UP> <C-W>k
map <C-LEFT> <C-W>h
map <C-RIGHT> <C-W>l
map <C-s> :w<CR>
map <silent> <leader>1 :b1<Cr>
map <silent> <leader>2 :b2<Cr>
map <silent> <leader>3 :b3<Cr>
map <silent> <leader>4 :b4<Cr>
map <silent> <leader>5 :b5<Cr>
map <silent> <leader>6 :b6<Cr>
map <silent> <leader>7 :b7<Cr>
map <silent> <leader>8 :b8<Cr>
map <silent> <leader>9 :b9<Cr>
map <silent> <A-c>     :bd<CR>
map <silent> <A-LEFT>  :bp<CR>
map <silent> <A-RIGHT> :bn<CR>
map <silent> <C-a> ggVG<CR>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nnoremap <silent> <leader>ve :edit ~/.config/nvim/init.vim<CR>
nnoremap <silent> <leader>vs :source ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>ff <cmd>Telescope find_files<CR>
nnoremap <silent><leader>fg <cmd>Telescope live_grep<CR>
nnoremap <silent><leader>fb <cmd>Telescope buffers<CR>
nnoremap <silent><leader>fh <cmd>Telescope help_tags<CR>
nnoremap <silent><leader>cp :FloatermNew--wintype=float --autoclose=0 g++ % -o %.exec && ./%.exec<CR>
nnoremap <silent><leader>cc :FloatermNew --wintype=float --autoclose=0 gcc % -o %.exec && ./%.exec<CR>
nnoremap <silent><leader>tt FloatermNew --wintype=float --autoclose=0<CR>
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap dd "_dd
vnoremap < <gv
vnoremap > >gv
vnoremap <leader>p "_dP

" Plugins

let g:polyglot_disabled = ['markdown','cpp']
call plug#begin()
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'
Plug 'kaicataldo/material.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'jiangmiao/auto-pairs'
Plug 'voldikss/vim-floaterm'
call plug#end()

colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

let g:material_terminal_italics = 1
command! AirlineThemes call fzf#run({
      \ 'source':  map(split(globpath(&rtp, 'autoload/airline/themes/*.vim'), "\n"),
      \               "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
      \ 'sink':    'AirlineTheme',
      \ 'options': '+m --prompt="Airline Themes> "',
      \ 'down':    '~40%'
      \})
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = '𥉉'
let airline#extensions#coc#warning_symbol = ''

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"
let g:jedi#completions_enabled = 0

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1
