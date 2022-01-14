set nu
set updatetime=300
set history=100
set tabstop=3
set autoindent
set shiftwidth=3
set splitright
set confirm
set incsearch
set showcmd
set cmdheight=1
set guifont=Hack\ Nerd\ Font:h16
set ttimeoutlen=100
set ignorecase
set omnifunc=syntaxcomplete#Complete
set laststatus=1
set title
set nocompatible
set visualbell
set noerrorbells
set numberwidth=1
set encoding=UTF-8
set ttyfast  
set hlsearch!
set spelllang=en,k
set wildmenu  
set undofile
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//
set mouse+=a
set clipboard=unnamedplus
syntax on
filetype plugin indent on

let mapleader = ","
tnoremap <Esc> <C-\><C-n>
map <Esc> :set relativenumber!<CR>

nmap <1Leader>v :e $MYVIMRC
nmap <leader>t :vsp<CR>
nmap <leader>f :NERDTreeToggle<CR>
nmap <leader><C-f> :Files <CR>

"nmap <Leader>_ :DesktopFiles<CR>
nmap <silent> gd :call <SID>GoToDefinition()<CR>
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr> 
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr> 
nnoremap <silent><nowait> <space><S-s>  :<C-u>CocList -I symbols<cr>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-s> :w


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
Plug 'dracula/vim',{'as':'dracula'}
Plug 'kevinhwang91/rnvimr'
call plug#end()

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)



colorscheme material
let g:material_terminal_italics = 1
command! AirlineThemes call fzf#run({
      \ 'source':  map(split(globpath(&rtp, 'autoload/airline/themes/*.vim'), "\n"),
      \               "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
      \ 'sink':    'AirlineTheme',
      \ 'options': '+m --prompt="Airline Themes> "',
      \ 'down':    '~40%'
      \})

let NERDTreeShowHidden=1

let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

nnoremap <silent> W :RnvimrToggle<CR>
map <silent> <leader>1 :b1<Cr>
map <silent> <leader>2 :b2<Cr>
map <silent> <leader>3 :b3<Cr>
map <silent> <leader>4 :b4<Cr>
map <silent> <leader>5 :b5<Cr>
map <silent> <leader>6 :b6<Cr>
map <silent> <leader>7 :b7<Cr>
map <silent> <leader>8 :b8<Cr>
map <silent> <leader>9 :b9<Cr>
map <silent> <leader><A-c> :b<CR>

map <silent> <C-a> ggVG<CR>

   let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

