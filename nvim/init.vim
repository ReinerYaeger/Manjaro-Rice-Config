set number
set list
set shiftwidth=3
set tabstop=3
set hidden
set termguicolors
set undofile
set spell
set ignorecase
set title
set fillchars+=vert:\|
set omnifunc=syntaxcomplete#Complete
set laststatus=2
set ignorecase
set smartcase
set mouse+=a
set splitright
set clipboard=unnamedplus
set confirm
set backupdir=/tmp//
set directory=/tmp//
set hlsearch!
set spelllang=en
set wildmenu
set incsearch
set nocompatible
set showmatch
set ai "Auto indent
set si "Smart indent
set nowrap
set autochdir
set encoding=UTF-8

" Return to last editing position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif



" Persistent Undo
try
  set undofile                " Save undos after file closes
  set undodir=$HOME/.vim/undo " where to save undo histories
  set undolevels=100000000         " How many undos
  set undoreload=100000000        " number of lines to save for undocatch
endtry

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Mapping

let g:coc_node_path = '/home/atom/Documents/Applications/node/node-v16.17.0-linux-x64/bin/node'
let mapleader = ","

map <C-DOWN> <C-W>j
map <C-UP> <C-W>k
map <C-LEFT> <C-W>h
map <C-RIGHT> <C-W>l
map <C-s> :w<CR>
map <silent> <A-1> :b1<Cr>
map <silent> <A-2> :b2<Cr>
map <silent> <A-3> :b3<Cr>
map <silent> <A-4> :b4<Cr>
map <silent> <A-5> :b5<Cr>
map <silent> <A-6> :b6<Cr>
map <silent> <A-7> :b7<Cr>
map <silent> <A-8> :b8<Cr>
map <silent> <A-9> :b9<Cr>
map <silent> <A-c>     :bd<CR>
map <silent> <A-LEFT>  :bp<CR>
map <silent> <A-RIGHT> :bn<CR>
map <silent> <C-a> ggVG<CR>

vmap <leader>a <Plug>(coc-codeaction-selected)<CR>
vmap <leader>fm  <Plug>(coc-format-selected)
nmap <leader>fm  <Plug>(coc-format-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <plug>(coc-implementation)
nmap <silent> gv :vsp<CR><Plug>(coc-definition)<C-W>
nmap <silent><leader>vss :split<CR>
nmap <silent><leader>vsv :vsplit<CR>



"" java"

nmap <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
nmap <leader>jR <Plug>(JavaComplete-Imports-RemoveUnused)
nmap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
nmap <leader>jii <Plug>(JavaComplete-Imports-Add)

imap <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
imap <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
imap <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
imap <C-j>ii <Plug>(JavaComplete-Imports-Add)

nmap <leader>jM <Plug>(JavaComplete-Generate-AbstractMethods)

imap <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)

nmap <leader>jA <Plug>(JavaComplete-Generate-Accessors)
nmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
nmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
nmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
nmap <leader>jts <Plug>(JavaComplete-Generate-ToString)
nmap <leader>jeq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
nmap <leader>jc <Plug>(JavaComplete-Generate-Constructor)
nmap <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)

imap <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
imap <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
imap <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)

vmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
vmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
vmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)

nmap <silent> <buffer> <leader>jn <Plug>(JavaComplete-Generate-NewClass)
nmap <silent> <buffer> <leader>jN <Plug>(JavaComplete-Generate-ClassInFile)



"" Java"



" To select from auto completion, use shift-Tab
"inoremap <silent><expr> <c-space> coc#refresh()
inoremap <A-BS> <C-\><C-o>"_db
inoremap <silent><expr> <s-TAB> pumvisible() ? coc#select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <s-Tab>
      \ coc#pum#visible() ? coc#pum#confirm():
      \ CheckBackspace() ? "\<s-Tab>" :
      \ coc#refresh()
" inoremap <expr><C-Tab> coc#pum#visible() ? coc#pum#next(1) : "\<C-h>"
nnoremap <silent><leader>ve :edit ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>vs :source ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>vc :edit ~/.config/nvim/coc-settings.json<CR>
nnoremap <silent><leader>ff <cmd>Telescope find_files<CR>
nnoremap <silent><leader>fg <cmd>Telescope live_grep<CR>
nnoremap <silent><leader>fb <cmd>Telescope buffers<CR>
nnoremap <silent><leader>fh <cmd>Telescope help_tags<CR>
nnoremap <silent><leader>cpp :FloatermNew --wintype=float --autoclose=0  g++ % -Wall -g -o %.exec && ./%.exec<CR>
nnoremap <silent><leader>ccc :FloatermNew --wintype=float --autoclose=0 gcc % -Wall -g -o %.exec && ./%.exec<CR>
nnoremap <silent><leader>jc :FloatermNew --wintype=float --autoclose=0 cd .. & javac -sourcepath . ./*/Driver.java -d ..out/ && java ./*/Driver.class<CR>
nnoremap <silent><leader>tt :FloatermNew --wintype=float --autoclose=0<CR>
nnoremap <silent><leader>nt :NERDTreeToggle<CR>
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap dd "_dd
vnoremap < <gv
vnoremap > >gv
"Paste replace visual selection without copying it
vnoremap p "_dP

" Plugins

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"let g:polyglot_disabled = ['markdown','cpp']
call plug#begin()
Plug 'ryanoasis/vim-devicons'
Plug 'zchee/deoplete-jedi'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'voldikss/vim-floaterm'
Plug 'https://github.com/ap/vim-css-color'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'preservim/nerdcommenter'
Plug 'neomake/neomake'
Plug 'mattn/emmet-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'https://github.com/shaunsingh/nord.nvim'
call plug#end()

let g:neomake_open_list = 2
let g:neomake_python_enabled_makers = ['flake8']
" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 100)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing).
call neomake#configure#automake('nrwi', 100)


colorscheme nord
"colorscheme dracula
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


set guifont=DroidSansMono\ Nerd\ Font\ 12

let g:airline_theme='nord_minimal'
let g:airline_powerline_fonts = 1
let g:airline#extensions#bufferline#enabled = 1
" let g:airline_left_sep = "\uE0C8" 
" let g:airline_left_alt_sep = "\uE0C8"
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = '🔥'
let airline#extensions#coc#warning_symbol ='⚠️'
let g:airline#extensions#scrollbar#enabled = 1

let g:airline_detect_spelllang=0

let g:webdevicons_enable_nerdtree = 1


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


autocmd FileType scss setl iskeyword+=@-@
autocmd FileType css,scss setlocal iskeyword+=-,?,!

" Simple Comment Help
" gc{motion}   :: Toggle comments (for small comments within one line
    "                 the &filetype_inline style will be used, if
    "                 defined)
    " gc<Count>c{motion} :: Toggle comment with count argument
    "                 (see |tcomment#Comment()|)
    " gcc          :: Toggle comment for the current line
    " g<{motion}   :: Uncomment region
    " g<c          :: Uncomment the current line
    " g<b          :: Uncomment the current region as block
    "
    " g>{motion}   :: Comment region
    " g>c          :: Comment the current line
    " g>b          :: Comment the current region as block
