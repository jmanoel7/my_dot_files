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

" initial config for easytags
let g:easytags_include_members=1

" Encoding and Font
set gfn=Dejavu\ Sans\ Mono
set encoding=utf8
try
    lang pt_BR
catch
endtry

" Vim Gui
if has("gui_running")
  set guioptions-=T
  set lines=40
  set co=120
endif

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

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
map <leader>e :e! ~/.vimrc<cr>

" GnuPG Encrypt
vnoremap <Leader><C-e> :!gpg2 --batch --no-tty --yes --default-key 607A5E65 --default-recipient-self --armor --encrypt 2>/dev/null<CR>

" GnuPG Decrypt
vnoremap <Leader><C-d> :!gpg2 --batch --no-tty --yes --default-key 607A5E65 --default-recipient-self --armor --decrypt 2>/dev/null<CR>

" Secret Enviremont
nnoremap <Leader><C-s> :set viminfo=<CR>:set noswapfile noundofile nobackup<CR>:set bin<CR>:let ch_save = &ch\|set ch=2<CR>

" Files .cpt
augroup CPT
    au!
    au BufReadPre *.cpt set bin
    au BufReadPre *.cpt set viminfo=
    au BufReadPre *.cpt set noswapfile
    au BufReadPost *.cpt let $vimpass = inputsecret("Password: ")
    au BufReadPost *.cpt silent '[,']!ccrypt -cb -E vimpass
    au BufReadPost *.cpt set nobin
    au BufWritePre *.cpt set bin
    au BufWritePre *.cpt '[,']!ccrypt -e -E vimpass
    au BufWritePost *.cpt u
    au BufWritePost *.cpt set nobin
augroup END

" set up zope page templates as the zpt filetype
autocmd BufNewFile,BufRead *.pt,*.cpt,*.zpt set filetype=zpt syntax=xml

" paste, copy and cut
nnoremap <leader><C-v> "+gP
vnoremap <leader><C-y> "+y
vnoremap <leader><C-x> "+x

" Case Words
vnoremap <Leader><C-l> :s/\(.\)/\L\1\E/g<CR>1GVG:s/\(\<.\)/\U\1\E/g<CR>1GVG:s/\(\<.\{1,3}\>\)/\L\1\E/g<CR>1GVG:s/ \(i\|ii\|iii\|iv\|v\|vi\|vii\|viii\|ix\|x\)$/\U\1\E/<CR>

" pretty-printing JSON, PYTHON IMPORT AND PYTHON PEP8 
nnoremap <leader><F5> :up<CR>:execute '%!json' \| w<CR>
nnoremap <leader><F6> :up<CR>:execute '%!python -m json.tool' \| w<CR>
nnoremap <leader><F7> :up<CR>:execute '%!isort ' . expand('%')<CR>
nnoremap <leader><F8> :up<CR>:execute '%!yapf ' . expand('%') \| w<CR>

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
set colorcolumn=80
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


" ============================================================================
" Plugins Setup
" ============================================================================


" Color scheme
" cd ~/.vim/bundle
" git clone https://github.com/jmanoel7/vim-colors.git
set background=dark
set t_Co=256
colorscheme wombat256mod
"colorscheme wombat_mbe

" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone https://github.com/Lokaltog/vim-powerline.git
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

" Vim Games
" cd ~/.vim/bundle
" git clone https://github.com/jmanoel7/vim-games.git

" GnuPG
" cd ~/.vim/bundle
" git clone https://github.com/jamessan/vim-gnupg.git
let g:GPGPreferArmor=1
let g:GPGPreferSign=1
let g:GPGUseAgent=1
let g:GPGExecutable="gpg2"

" scriptease.vim: A Vim plugin for Vim plugins
" cd ~/.vim/bundle
" git clone https://github.com/tpope/vim-scriptease.git

" VIM Table Mode
" cd ~/.vim/bundle
" git clone https://github.com/dhruvasagar/vim-table-mode.git

" VIM Latex-Suite
" cd ~/.vim/bundle
" git clone https://github.com/vim-latex/vim-latex.git
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" Emmet (ex-Zen Coding) - vim plugins for HTML and CSS hi-speed coding
" cd ~/.vim/bundle
" git clone http://github.com/mattn/emmet-vim/
"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_install_global = 0
autocmd FileType html,css,django EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

" L9 : Vim-script library
" cd ~/.vim/bundle
" hg clone https://bitbucket.org/ns9tks/vim-l9

" FuzzyFinder
" cd ~/.vim/bundle
" hg clone https://bitbucket.org/ns9tks/vim-fuzzyfinder
map <leader>f :FufFileWithCurrentBufferDir<CR>
map <leader>m :FufFileWithFullCwd<CR>
map <leader>b :FufBuffer<CR>

" MRU
" cd ~/.vim/bundle
" git clone https://github.com/vim-scripts/mru.vim.git
map <leader><space> :MRU<CR>
let g:MRU_Max_Entries = 1000
let g:MRU_Window_Height = 15
let g:MRU_Max_Menu_Entries = 20
let g:MRU_Max_Submenu_Entries = 15

" TagBar
" cd ~/.vim/bundle
" git clone https://github.com/majutsushi/tagbar
let g:tagbar_usearrows=1
let g:tagbar_width=30
let g:tagbar_singleclick=1
" Use <F9> to open Tagbar in Right side
nmap <F9> :TagbarToggle<CR>

" Vim-EasyTags
" cd ~/.vim/bundle
" git clone https://github.com/xolox/vim-easytags.git
let g:easytags_cmd = '/usr/bin/ctags'
let g:easytags_file = '~/.vim/tags'
let g:easytags_by_filetype = '~/.vim/tags_dir'
let g:easytags_events = ['BufWritePost']
let g:easytags_python_enabled = 1
"let g:easytags_python_script = ???
set tags=./.tags;,~/.vim/tags
let g:easytags_dynamic_files = 1

" Vim-Misc
" cd ~/.vim/bundle
" git clone https://github.com/xolox/vim-misc.git

" Syntastic
" cd ~/.vim/bundle
" git clone https://github.com/scrooloose/syntastic.git
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
nmap <F8> :SyntasticCheck<CR>
nnoremap <silent> <C-d> :lclose<CR>:bdelete<CR>
cabbrev <silent> bd <C-r>=(getcmdtype()==#':' && getcmdpos()==1 ? 'lclose\|bdelete' : 'bd')<CR>
"let g:syntastic_aggregate_errors = 1
"let g:syntastic_always_populate_loc_list = 1
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perlcritic', 'podchecker', 'perl']
let g:syntastic_python_checkers = ['flake8', 'pep8', 'pyflakes', 'python']
"let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_zpt_checkers = ['zptlint']
let g:syntastic_html_checkers = ['tidy', 'w3']
let g:syntastic_html_tidy_exec = 'tidy5'
"let g:syntastic_html_w3_api (string; default: 'http://validator.w3.org/check')
"let g:syntastic_html_w3_exec (string; default: 'curl')
" list of errors to ignore
"let g:syntastic_html_tidy_ignore_errors (list; default: [])
"let g:syntastic_html_tidy_ignore_errors = [ '<input> proprietary attribute "role"' ]
" list of additional blocklevel tags, to be added to --new-blocklevel-tags 
"let g:syntastic_html_tidy_blocklevel_tags (list; default: [])
" list of additional inline tags, to be added to --new-inline-tags 
"let g:syntastic_html_tidy_inline_tags (list; default: [])
" list of additional empty tags, to be added to --new-empty-tags 
"let g:syntastic_html_tidy_empty_tags (list; default: [])
let g:syntastic_xhtml_checkers = ['tidy', 'jshint']
let g:syntastic_xml_checkers = ['xmllint']
let g:syntastic_javascript_checkers = ['jslint', 'jshint']
let g:syntastic_javascript_jslint_args = "--white --nomen --regexp --browser --devel --windows --sloppy --vars"
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_css_checkers = ['csslint', 'prettycss']
let g:syntastic_php_checkers = ['phplint', 'php']
let g:syntastic_java_checkers = ['javac']
let g:syntastic_nasm_checkers = ['nasm']
let g:syntastic_sh_checkers = ['shellcheck']
let g:syntastic_zsh_checkers = ['zsh']
let g:syntastic_tex_checkers = ['lacheck', 'chktex']
let g:syntastic_text_checkers = ['language_check']
let g:syntastic_text_language_check_args = '--language=pt-BR'


" YouCompleteMe
" cd ~/.vim/bundle
" git clone https://github.com/Valloric/YouCompleteMe.git
" git submodule update --init --recursive
" ./install.sh --clang-completer --system-libclang --system-boost


" Ultisnips
" cd ~/.vim/bundle
" git clone https://github.com/SirVer/ultisnips.git

" The default value for g:UltiSnipsJumpBackwardTrigger interferes with the
" built-in complete function: |i_CTRL-X_CTRL-K|. A workaround is to add the
" following to your vimrc file or switching to a plugin like Supertab or
" YouCompleteMe.
"inoremap <c-x><c-k> <c-x><c-k>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" To use python version 2.x
let g:UltiSnipsUsePythonVersion = 2

" To use python version 3.x
"let g:UltiSnipsUsePythonVersion = 3


" vim-snippets
" cd ~/.vim/bundle
" git clone https://github.com/honza/vim-snippets.git
map <Leader><C-b> Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>


" NerdTree
" Conque
" MiniBufferExplorer
" vim-session
" suround
" django
" virtualenv
" taskbar


" ============================================================================ "
" Removed Plugins
" ============================================================================ "


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
" git clone https://github.com/davidhalter/jedi-vim.git
"let g:jedi#goto_command = "<leader>d"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"
"let g:jedi#popup_on_dot = 1
"let g:jedi#popup_select_first = 1
"let g:jedi#completions_enabled = 0


" pyflakes
" pep8
