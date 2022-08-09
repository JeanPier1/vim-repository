call plug#begin('C:\Users\User\AppData\Local\vim\plugged')
" Aquí irán los plugins a instalar
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Temas para airline
Plug 'Yggdroot/indentLine'
Plug 'ervandew/supertab'
Plug 'Shougo/echodoc.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
"Autocompletion JavaScript
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
"https://github.com/sbdchd/neoformat
Plug 'sbdchd/neoformat'
"Nord schema
Plug 'arcticicestudio/nord-vim'
"Color schema NVCode Colorscheme
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'morhetz/gruvbox'
"Plug 'nvim-treesitter/nvim-treesitter'

"nvim-lspconfig
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'
" Rainbow Parentheses Improved
"Plug 'luochen1990/rainbow'


" Bar neovim
Plug 'kyazdani42/nvim-web-devicons'
"-- removed! You can remove it from your vimrc
"Plug 'romgrk/lib.kom' -- removed! You can remove it from your vimrc
"Plug 'romgrk/barbar.nvim' 
"vim-polyglot
Plug 'sheerun/vim-polyglot'
Plug 'othree/html5.vim'
Plug 'AndrewRadev/tagalong.vim'

"  Hit the easy button on great code

"Plugin 'zxqfl/tabnine-vim'


"plugin for live html, css, and javascript editing in vim
Plug 'turbio/bracey.vim'


"Plugin snippets php
"Plug 'rafaelndev/deoplete-laravel-plugin', {'for': ['php'], 'do': 'composer install'}


" vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'
"Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}

call plug#end()



set number

syntax on
"Funcionalidades
set mouse=a
set noerrorbells
set expandtab
set smartindent
set numberwidth=1
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard+=unnamed
set encoding=utf-8
set cursorline
set noshowmode


" Luego de esta línea puedes agregar tus configuraciones y mappings
set autoindent " Activa pegado automatico
set termguicolors  " Activa true colors en la terminal

let g:nvcode_termcolors=256


"let g:material_terminal_italics = 1
"let g:material_theme_style = 'ocean-community'
colorscheme nvcode
if (has("termguicolors"))
    set termguicolors
endif

let g:airline_theme = 'night_owl'

"let g:airline_solarized_bg="transparent"

let g:nord_cursor_line_number_background = 1
let g:nord_uniform_diff_background = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1


let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>


let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_section_b = "%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}"

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)
" Inciar numeracion
set number
" No mostrar en ciertos tipos de buffers y archivos

" Invertir direccion de navegacion (de arriba a abajo)
let g:SuperTabDefaultCompletionType = '<c-n>'
set noshowmode  " No mostrar el modo actual (echodoc hace uso de este espacio)
" Activar echodoc al iniciar Neovim
let g:echodoc_enable_at_startup = 1

let g:NERDTrimTrailingWhitespace = 1  " Quitar espacios al quitar comentario
" configure VimdevIcons
set encoding=UTF-8

" coc
set nocompatible
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" sangria" use 4 spaces for tabs
set tabstop=4 softtabstop=4 shiftwidth=4

"agregar correcciones de formatos
let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']

"let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

command! -nargs=0 Prettier :CocCommand prettier.formatFile
highlight Comment cterm=italic gui=italic

nnoremap <silent>    <leader>bd :BufferClose<CR>
nnoremap <silent>    <S-Tab> :bprevious<CR>
nnoremap <silent>    <Tab> :bnext<CR>
nnoremap <silent>    <S-left> :bprevious<CR>
nnoremap <silent>    <S-right> :bnext<CR>


" coc_glogal_extension
let g:coc_global_extensions = [
      \'coc-python',
      \'coc-emmet',
      \'coc-pyright',
      \'coc-marketplace',
      \'coc-prettier',
      \'coc-snippets',
      \'coc-tighten-lint',
      \'coc-highlight',
      \'coc-json']



let NERDTreeShowHidden=1

" Move up or down line
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


nnoremap <space>e :CocCommand explorer<CR>


function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction



let g:startify_bookmarks = [{'v':'C:\tools\vim\_vimrc'},{'c':'~\vimfiles\coc-settings.json'}]

let g:startify_lists = [{'header': [' Bookmarks'],    'type':'bookmarks'},{'header': [' MRU'],        'type':'files'},{ 'header': [' MRU '.getcwd()], 'type': 'dir' }]

nmap <A-p> :Startify<CR>


let g:startify_fortune_use_unicode=1

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Delete
nnoremap <C-x> :bdelete<CR>


"move to the next instance of the pattern in the same direction with n

" vim-multiple-cursors config keymap
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


let g:phpactorPhpBin = "C:/tools/php81"

let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''


