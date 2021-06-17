call plug#begin('~/.vim/plugged')
Plug 'baverman/vial'
Plug 'mlaursen/vim-react-snippets'
Plug 'leafgarland/typescript-vim'
Plug 'baverman/vial-http'
Plug 'vimwiki/vimwiki'
Plug 'mattn/vim-gist'
Plug 'junegunn/fzf'
Plug 'junegunn/vim-peekaboo'
Plug 'michal-h21/vim-zettel'
Plug 'thosakwe/vim-flutter'
Plug 'sheerun/vim-polyglot'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'FooSoft/vim-argwrap'
Plug 'bkad/CamelCaseMotion'
Plug 'tpope/vim-sensible'
Plug 'dart-lang/dart-vim-plugin'
Plug 'plasticboy/vim-markdown'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'travisjeffery/vim-auto-mkdir'
Plug 'lepture/vim-jinja'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'mattn/emmet-vim'
Plug 'dylanaraps/wal.vim'
Plug 'farmergreg/vim-lastplace'
Plug '907th/vim-auto-save'
Plug 'lepture/vim-jinja'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vividchalk'
Plug 'arcticicestudio/nord-vim'
Plug 'alvan/vim-closetag'
Plug 'prettier/vim-prettier'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'itmammoth/doorboy.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'wellle/targets.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'idanarye/vim-merginal'
call plug#end()


" keymaps
imap jj <Esc>

syntax on
" --- general ---
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noswapfile
set number relativenumber
let mapleader = "\<Space>"

xmap <leader>bw  <Plug>(coc-codeaction-selected)
nmap <leader>bw  <Plug>(coc-codeaction-selected)


nnoremap <C-p> :<C-u>FZF<CR>
nmap <leader>gM :MerginalToggle <CR>

let g:dart_style_guide = 2
let g:dart_format_on_save = 1

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)


let g:auto_save_write_all_buffers = 0
let g:auto_save = 0
set hidden
let g:sneak#label = 1

nmap <leader>fr :FlutterHotRestart <CR>
nmap <leader>fs :FlutterSplit <CR>
nmap <leader>mt :MerginalToggle <CR>


map <silent> ,w <Plug>CamelCaseMotion_w
map <silent> ,b <Plug>CamelCaseMotion_b
map <silent> ,e <Plug>CamelCaseMotion_e
map <silent> ,ge <Plug>CamelCaseMotion_ge

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" colorscheme shirotelin
colorscheme spaceduck

let g:lightline = {
      \ 'colorscheme': 'spaceduck',
      \ }

let g:UltiSnipsJumpForwardTrigger="<c-z>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

nnoremap <leader>zn :ZettelNew<space>

nnoremap <silent> <leader>ca :ArgWrap<CR>
let g:argwrap_tail_comma = 1


nnoremap <silent> <leader>cr :VialHttp<CR>
