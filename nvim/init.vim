"NeoBundle Scripts-----------------------------
if has('vim_starting')
  " Required:
  set runtimepath+=/root/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/root/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/deoplete.nvim', { 'do': ':NeoBundleRemotePlugins' }
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'reasonml/vim-reason-loader'
NeoBundle 'tpope/vim-surround'
NeoBundle 'reasonml/vim-reason-loader'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'easymotion/vim-easymotion'

" Fuzzy searching
NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
NeoBundle 'junegunn/fzf.vim'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" line numbers
set relativenumber 
set number

" Solarized 
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Leader Setup
let mapleader = "\<Space>"

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

nmap <leader>p :Files<cr>

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

set shell=/bin/sh

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Reason ML
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.reason = '[^. *\t]\.\w*\|\h\w*|#'
let g:deoplete#sources = {}
let g:deoplete#sources.reason = ['omni', 'buffer']
let g:syntastic_reason_checkers=['merlin']

