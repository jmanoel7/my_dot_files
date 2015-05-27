" ============================================
" My vimrc <joaomanoel7@gmail.com>
" ============================================

" ============================================
" Note to myself:
" DO NOT USE <C-z> FOR SAVING WHEN PRESENTING!
" ============================================

"set nonu
"set lbr
"set tw=500
"set nowrap "no line wrapping
"set fo-=t  "no line wrapping text when typing
"set so=7            " Set 7 lines to the curors - when moving vertical..
"set ruler           "Always show current position
"set hid             "Change buffer - without saving
"set nohidden
"set nomodeline
"set whichwrap+=<,>,h,l
"set nolazyredraw "Don't redraw while executing macros 

" Encoding and Font
set gfn=Dejavu\ Sans\ Mono
set encoding=utf8
try
    lang pt_BR
catch
endtry

" Vim Gui
if has("gui_running")
  "set guioptions-=T
  set lines=40
  set co=120
endif

" Automatic reloading of .vimrc
autocmd! bufwritepost _vimrc source %

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
set backspace=eol,start,indent
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

" confirm before quit
set confirm

" vim auto write
set autowrite

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader=","
let g:mapleader=","

" Write Command
nmap <leader>w :w!<cr>

" Edit vimrc config file
map <leader>e :e! ~\_vimrc<cr>

" paste, copy and cut
nnoremap <leader><C-v> "+gP
vnoremap <leader><C-y> "+y
vnoremap <leader><C-x> "+x

" Case Words
vnoremap <Leader><C-l> :s/\(.\)/\L\1\E/g<CR>1GVG:s/\(\<.\)/\U\1\E/g<CR>1GVG:s/\(\<.\{1,3}\>\)/\L\1\E/g<CR>1GVG:s/ \(i\|ii\|iii\|iv\|v\|vi\|vii\|viii\|ix\|x\)$/\U\1\E/<CR>

" pretty-printing JSON
nnoremap <leader><F8> :execute '%!python -m json.tool' \| w<CR>
nnoremap <leader><F9> :execute '%!json' \| w<CR>

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
noremap <Leader>q :q<CR>     " Quit current window
noremap <Leader>Q :qa!<CR>   " Quit all windows

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
vnoremap <Leader><C-s> :sort<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Errors and Visualbell
set noerrorbells
set novisualbell
"set t_vb=
"set tm=500

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on
set nocompatible
set magic "Set magic on, for regular expressions
set showmatch "Show matching bracets when text indicator is over them

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=120
highlight ColorColumn ctermbg=233

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Useful settings
set history=1000
set undolevels=1000

" Real programmers don't use TABs but spaces
set textwidth=120
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab
set smartindent
set autoindent

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
execute pathogen#infect()
execute pathogen#helptags()
"call pathogen#infect()

" Color scheme
" cd ~/.vim/bundle
" git clone https://github.com/jmanoel7/vim-colors.git
set background=dark
set t_Co=256
"colorscheme wombat256mod
colorscheme wombat_mbe

" ============================================================================
" Python IDE Setup
" ============================================================================

" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2

" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.swp
set wildignore+=*.bak
set wildignore+=*.class
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Settings for python-mode
" Note: I'm no longer using this. Leave this commented out
" and uncomment the part about jedi-vim instead
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
"" map <Leader>g :call RopeGotoDefinition()<CR>
"" let ropevim_enable_shortcuts = 1
"" let g:pymode_rope_goto_def_newwin = "vnew"
"" let g:pymode_rope_extended_complete = 1
"" let g:pymode_breakpoint = 0
"" let g:pymode_syntax = 1
"" let g:pymode_syntax_builtin_objs = 0
"" let g:pymode_syntax_builtin_funcs = 0
"" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" Python folding and more
" cd ~/.vim/bundle
" git clone https://github.com/jmanoel7/vim-utils.git
set nofoldenable
