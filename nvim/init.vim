set nu
set mouse=v
set nowrap
set rnu
set history=100
set shell=/bin/fish
set tabstop=3
set autoindent
set shiftwidth=4
set splitright
set confirm
set incsearch
set showcmd
set cmdheight=1
set guifont=Hack\ Nerd\ Font:h16
set ttimeoutlen=100
set ignorecase
set omnifunc=syntaxcomplete#Complete
set laststatus=2
set title
set nocompatible
set visualbell
set noerrorbells
set numberwidth=1
set encoding=UTF-8
set ttyfast  
set clipboard=unnamedplus
set hlsearch!
set spelllang=en,cjk
set wildmenu  
set undofile
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//
set mouse+=a
set updatetime=150
"set bufhidden
"set completeopt+=popup
syntax on
filetype plugin indent on


:let &makeprg = "g++ Main.cpp -o Main"

tnoremap <Esc> <C-\><C-n>
map  	<nowait><silent>	<Esc> :set relativenumber!<CR>
map  	<nowait><silent>  <C-s> :w <CR>
map  	<nowait><silent>  <C-x> c <CR>
map   <nowait><silent> 	<C-c> "+y<CR>
map   <nowait><silent> 	<C-a> ggVG<CR>
map 	<nowait><silent>  <S-c> :%s/^/
nmap  <nowait><silent> 	<C-t> :vsp <bar> :vertical resize 50 <bar> :term <CR>
nmap  <nowait><1Leader>	v :e $MYVIMRC
map <nowait><silent> <BS> <c-w> <CR>
nmap <nowait><silent> gd :call <SID>GoToDefinition()<CR>
nmap <nowait><silent> gr <Plug>(coc-references)
nmap <nowait><silent> gd <Plug>(coc-definition)
nmap <nowait><silent> gy <Plug>(coc-type-definition)
nmap <nowait><silent> gi <Plug>(coc-implementation)
nmap <nowait><silent> gr <Plug>(coc-references)
nmap <nowait><silent> [g <Plug>(coc-diagnostic-prev)
nmap <nowait><silent> ]g <Plug>(coc-diagnostic-next)
noremap x "_x
noremap X "_x
noremap  "_x
noremap <Del> "_x
inoremap <nowait> <silent> <C-BS> :set backspace=indent,eol,start <CR>
nnoremap <nowait><silent> <C-U>  :UndotreeTogg<CR>
nnoremap <nowait><silent> <space>a  :<C-u>CocList diagnostics<cr> 
nnoremap <nowait><silent> <space>c  :<C-u>CocList commands<cr> 
nnoremap <nowait><silent> <space><S-s>  :<C-u>CocList -I symbols<cr> 
nnoremap <F3> :set hlsearch!<CR>
nnoremap {w :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <nowait><silent> <space>a  :<C-u>CocList diagnostics<cr> 
nnoremap <nowait><silent> <space>c  :<C-u>CocList commands<cr> 
nnoremap <nowait><silent> <space><S-s>  :<C-u>CocList -I symbols<cr> 
nnoremap <nowait><silent>    <A-.> :BufferNext<CR>
nnoremap <nowait><silent>    <A-1> :BufferGoto 1<CR>
nnoremap <nowait><silent>    <A-2> :BufferGoto 2<CR>
nnoremap <nowait><silent>    <A-3> :BufferGoto 3<CR>
nnoremap <nowait><silent>    <A-4> :BufferGoto 4<CR>
nnoremap <nowait><silent>    <A-5> :BufferGoto 5<CR>
nnoremap <nowait><silent>    <A-6> :BufferGoto 6<CR>
nnoremap <nowait><silent>    <A-7> :BufferGoto 7<CR>
nnoremap <nowait><silent>    <A-8> :BufferGoto 8<CR>
nnoremap <nowait><silent>    <A-9> :BufferLast<CR>
nnoremap <nowait><silent>    <A-p> :BufferPin<CR>
nnoremap <nowait><silent>    <A-c> :BufferClose<CR>
nnoremap <nowait><silent>    <A-Left> :BufferPrevious<CR>
nnoremap <nowait><silent>    <A-Right> :BufferNext<CR>
nnoremap <C-Left> <nowait> :tabprevious<CR>                      
nnoremap <C-Right> <nowait> :tabnext<CR>
noremap <leader>c "*yy<cr>
inoremap <silent> <F11> <C-O>:set spell!<cr>
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0
"nmap <Leader>_ :DesktopFiles<CR>


"fzf.vim-------------------maps and uses----------------------
""Leader+L for line search in the current file.
"nnoremap <silent> <Leader>L   :BLines<CR>
"nnoremap <silent> <Leader>B  :Buffers<CR>
"nnoremap <silent> <Leader>b  :bn<CR>
nnoremap ,cpp :-1read $HOME/.vim/skeleton/skel.cpp<CR>9j3wa<CR><ESC>O


map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

let mapleader = "\<Space>"

"Disabling that irritating ERROR bell PHEW!
if has("gui_macvim")
	autocmd GUIEnter * set vb t_vb=
endif


call plug#begin()
Plug 'rbgrouleff/bclose.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'rbgrouleff/bclose.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'luochen1990/rainbow'
Plug 'srcery-colors/srcery-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'
Plug 'yggdroot/indentline'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'yaocccc/nvim-lines.lua'
Plug 'https://github.com/preservim/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'whatyouhide/vim-gotham'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'kaicataldo/material.vim'
Plug 'https://github.com/Townk/vim-autoclose'
Plug 'rbgrouleff/bclose.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'ncm2/ncm2-ultisnips'
Plug 'mbbill/undotree'
Plug 'alvan/vim-closetag'
Plug 'https://github.com/bfrg/vim-cpp-modern'
Plug 'uiiaoo/java-syntax.vim'
Plug 'ray-x/lsp_signature.nvim'
" Packer
call plug#end()

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.js'
let g:closetag_xhtml_filenames = '*.html,*.xhtml,*.phtml,*.php,*.js'
let g:closetag_filetypes = '*.html,*.xhtml,*.phtml,*.php,*.js'
let g:closetag_xhtml_filetypes = '*.html,*.xhtml,*.phtml,*.php,*.js'
let g:closetag_emptyTags_caseSensitive = 0
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1


"Rainbow Brackets plugin
let g:rainbow_active = 1

let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"



"NETRW
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer


autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType c,cpp :set cindent
autocmd FileType c,cpp :setf c
autocmd FileType c,cpp :set expandtab
  let g:indentLine_char_list = ['|', '¦', '┆', '┊']
autocmd! User indentLine doautocmd indentLine Syntax


let g:fzf_history_dir = '/tmp/'
let g:fzf_files_options =
			\ '--preview "(coderay {} || bat {}) 2> /dev/null | head -'.&lines.'"'
let g:fzf_layout = {'window' : {'width' : 0.8, 'height' : 0.8}}

"" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
" imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-l> <plug>(fzf-complete-line)
"
"augroup resume_edit_position
	autocmd!
	autocmd BufReadPost *
				\ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
				\ | execute "normal! g`\"zvzz"
				\ | endif
augroup END


command! -nargs=* -complete=dir Cd call fzf#run(fzf#wrap(
			\ {'source': 'find '.(empty(<f-args>)? '.' : <f-args>).' -type d',
			\  'sink': 'cd'}))

let g:UltiSnipsExpandTrigger= '<tab>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'

"" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


colorscheme material
let g:material_terminal_italics = 1
command! AirlineThemes call fzf#run({
			\ 'source':  map(split(globpath(&rtp, 'autoload/airline/themes/*.vim'), "\n"),
			\               "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
			\ 'sink':    'AirlineTheme',
			\ 'options': '+m --prompt="Airline Themes> "',
			\ 'down':    '~40%'
			\})
let g:airline_theme='apprentice'
let g:airline_powerline_fonts = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


function! s:GoToDefinition()
  if CocAction('jumpDefinition')
    return v:true
  endif

  let ret = execute("silent! normal \<C-]>")
  if ret =~ "Error" || ret =~ "错误"
    call searchdecl(expand('<cword>'))
  endif
endfunction

au Filetype markdown,c,cpp let b:autopairs_loaded=1

" Copy to system clipboard
noremap <leader>c "*yy<cr>

let bufferline = get(g:, 'bufferline', {})

" New tabs are opened next to the currently selected tab.
" Enable to insert them in buffer number order.
let bufferline.add_in_buffer_number_order = v:false

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Excludes buffers from the tabline
let bufferline.exclude_ft = ['javascript']
let bufferline.exclude_name = ['package.json']

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
let bufferline.icons = v:true

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" If true, new buffers will be inserted at the end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_end = v:false

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 4

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null
