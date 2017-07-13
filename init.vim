execute pathogen#infect()

let NERDTreeChDirMode=2
let g:deoplete#enable_at_startup = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#buffer_nr_show = 1
" let builder_context.left_sep     = get(g:, 'airline#extensions#tabline#left_sep'     , g:airline_left_sep)
let g:airline#extensions#tabline#left_alt_sep = '|'


map <C-n> :NERDTreeToggle<CR>
map <C-b> : Flisttoggle<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

nmap <F8> :TagbarToggle<CR>

set expandtab
set shiftwidth=2
set softtabstop=2
set mouse=a
set laststatus=2
set hidden
set number
set wrap
set linebreak
set noswapfile
set showmatch
set textwidth=100
set colorcolumn=+1

highlight clear SignColumn
highlight ExtraWhitespace ctermbg=red guibg=red

match ExtraWhitespace /\s\+$/

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>let g:acp_enableAtStartup = 0
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


if has("gui_running")
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline
endif

syntax on
" set termguicolors        " true color support
" set background=dark      " prefer dark background compatible colors
" let base16colorspace=256 " using 256color for base16 themes
" colorscheme base16-arc-maia-dark
colo desert

filetype on
filetype plugin indent on
au BufNewFile,BufRead *.coffee set filetype=coffee

if executable("rg")
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" formats json into human readable
com! FormatJSON %!python -m json.tool

" Removes trailing spaces
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

