syntax on
set backspace=indent,eol,start
set tabstop=2 shiftwidth=2 expandtab

set nowrap

filetype plugin indent on

" plugins
call plug#begin('~/.vim/plugin_downloads')
  Plug 'mhartington/oceanic-next'
  Plug 'morhetz/gruvbox'
  Plug 'pangloss/vim-javascript'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'vim-airline/vim-airline'
  Plug 'Yavor-Ivanov/airline-monokai-subtle.vim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/fzf'
call plug#end()

" search subfolders
set path+=**

" tab completion all matching files
set wildmenu

" ignore nodemodules for wildmenu
set wildignore+=**/node_modules/**

" get rid of annoyign parenthesis matching
function! g:GoAwayMatchParen ()
  if exists(":NoMatchParen")
    :NoMatchParen
  endif
endfunction

" colors
set t_Co=256
colorscheme monokai 
let g:airline_theme = 'monokai_subtle'

" pmenu
highlight Pmenu ctermbg=black guibg=black
highlight PmenuSel ctermbg=gray guibg=gray


highlight Normal ctermbg=NONE
highlight NonText ctermbg=NONE
highlight LineNr ctermbg=NONE

autocmd BufEnter *.go colorscheme molokai 
autocmd BufEnter *.go highlight Normal ctermbg=NONE
autocmd BufEnter *.go highlight NonText ctermbg=NONE
autocmd BufEnter *.go highlight LineNr ctermbg=NONE
autocmd BufEnter *.go call GoAwayMatchParen()

let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_variable_declarations = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_fields = 1
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1
let g:go_version_warning = 0 
let g:go_auto_type_info = 1

" disable vim-go :GoDef shortcut
let g:go_def_mapping_enabled = 0


set mouse=a
set number

nmap <C-f> :FZF<enter>

" tags
set tags=tags

if has("multi_byte")
  set encoding=utf-8
  setglobal fileencoding=utf-8
else
  echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

" coc 
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set signcolumn=no

let g:coc_global_extensions = ['coc-solargraph']

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>" 

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim', 'help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction







