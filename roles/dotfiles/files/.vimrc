colorscheme torte

" remap escape in insert and visual mode
inoremap kj <Esc>

" timeout settings
set timeoutlen=600
set ttimeoutlen=5

" use system clipboard by default
set clipboard=unnamedplus

" select last changed/pasted text and set visual mode accordingly
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

let mapleader = ";"

" set hybrid line numbers (relnums only in focused buffer
set number
set relativenumber

" automatically toggle relnums
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" highlight search results
set hlsearch

" change cursor to line in insert mode
" autocmd InsertEnter * set cul
" autocmd InsertLeave * set nocul

" cursor settings
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" optional reset cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

" install Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/autoload')

Plug 'preservim/nerdcommenter'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Initialize plugin system
call plug#end()

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" python-mode settings
" no colorcolumn to show max line lengt
" let g:pymode_options_colorcolumn = 0
hi ColorColumn ctermbg=6
let g:pymode_options_colorcolumn = 0

" run current file
let g:pymode_run_bind = '<leader>r'

" show documentation for current word
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'

" autocommand to render Rmarkdown
" :autocmd BufWritePost *.Rmd silent! ![[ -x render.R ]] && ./render.R

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
