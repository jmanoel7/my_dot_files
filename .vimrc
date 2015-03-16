" ==================
" BEGIN VIMRC CONFIG
" ==================

" =====================
" BEGIN PATHOGEN CONFIG
" =====================

filetype off
let g:easytags_include_members=1
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on

" ===================
" END PATHOGEN CONFIG
" ===================


" ====================
" BEGIN GENERAL CONFIG
" ====================

" INSTALLED PLUGINS
" =================
" Color scheme Mustang : http://hcalves.deviantart.com/art/Mustang-Vim-Colorscheme-98974484
" Syntastic :https://github.com/scrooloose/syntastic
" FuzzyFinder : http://www.vim.org/scripts/script.php?script_id=1984
" L9 : http://www.vim.org/scripts/script.php?script_id=3252
" Pyflakes : https://github.com/kevinw/pyflakes-vim
" Pep8 : https://github.com/vim-scripts/pep8
" NerdTree : https://github.com/scrooloose/nerdtree
" NerdCommenter : https://github.com/scrooloose/nerdcommenter
" Tagbar : https://github.com/majutsushi/tagbar
" Sparkup : http://jetpackweb.com/blog/2010/03/04/write-html-faster-with-sparkup-vim-and-textmate/
" UltiSnips : http://www.vim.org/scripts/script.php?script_id=2715a
"             http://fueledbylemons.com/blog/2011/07/27/why-ultisnips/
" MRU    : https://github.com/vim-scripts/mru.vim
" Tagbar : https://github.com/majutsushi/tagbar
" NeoComplcache : https://github.com/Shougo/neocomplcache
" IndentPython : https://github.com/vim-scripts/indentpython.vim
" Fugitive : https://github.com/tpope/vim-fugitive

" Key Shorcuts by Default
" =======================
" Leader                = ,
" MRU                   = , + space
" Pep8                  = F8
" TaskList              = F7
" FileManager + Tagbar  = F6
" FileManager           = F4
" Tagbar                = F5
" FuzzFinder Files      = , + m
" FuzzFinder Buffer     = , + b
" Shell FullScreen      = , + f + s
" Shell Open            = , + o + p

" Sets how many lines of history VIM has to remember
set history=1000

" Ignore some file
set wildignore=*.swp,*.bak,*.pyc,*.class

" Set to auto read when a file is changed from the outside
set autowrite

" With a map leader it's possible to do extra key combinations
" leader is press comma (,) key
" like <leader>w saves the current file
let mapleader=","
let g:mapleader=","

" Fast saving with leader + w
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

" Text, tab and indent related
" ============================
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set nowrap "no line wrapping
set fo-=t  "no line wrapping text when typing

" VIM user interface
" ==================
set so=7            " Set 7 lines to the curors - when moving vertical..
set ruler           "Always show current position
set hid             "Change buffer - without saving
set nohidden
set nomodeline
set mouse=a
set confirm

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set nolazyredraw "Don't redraw while executing macros 
set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Colors and Fonts
" ================
syntax enable "Enable syntax hl

set shell=/bin/bash

set guioptions-=T
set background=dark
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme wombat_mbe
set nonu
set gfn=Liberation\ Mono\ 10 

set encoding=utf8
try
    lang pt_BR
catch
endtry

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=43
  set co=87
endif
  
" Files, backups and undo
" =======================
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" Moving around, tabs and buffers
" ===============================

"Useful when moving accross long lines
map j gj
map k gk

map <silent> <leader><cr> :nohlsearch<cr>

" GRB: clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<CR>/<BS>

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,300 bd!<cr>

" Moving tab using CTRL+ the arrows
map <C-right> :bn<CR>
map <C-left> :bp<CR>

" Tab configuration
map <leader>tn :tabnew! %<cr>
map <leader>te :tabedit 
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

" My CUSTOM 
" =========
set cmdheight=1               " Explicitly set the height of the command line
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set pastetoggle=<F3>          " Press F3 for toggle paste mode
set cursorline

" Taken From http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
autocmd FileType python highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
autocmd FileType python match OverLength /\%81v.\+/

" Paste using ,CTRL+v in normal mode
nnoremap <leader><C-v> "+gP

" Set default environment based on current edited files
autocmd BufEnter * silent! lcd %:p:h

" The best thing here! 
" In insert mode, you can paste from clipboard using CTRL+v
inoremap <C-v> <ESC>:set paste<CR>"+gp<ESC>:set nopaste<ENTER>i<RIGHT>

" have command-line completion <tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <tab>s cycle through the possibilities:
set wildmode=list:longest,full

set guioptions+=b   " add a horizontal scrollbar to the bottom

"--- search options ------------
set incsearch       " show 'best match so far' as you type
set hlsearch        " hilight the items found by the search
"set ignorecase      " ignores case of letters on searches
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters

" Search and error color highlights
hi Search guifg=#ffffff guibg=#0000ff gui=none ctermfg=white ctermbg=darkblue
hi IncSearch guifg=#ffffff guibg=#8888ff gui=none ctermfg=white
highlight SpellBad guifg=#ffffff guibg=#8888ff gui=none ctermfg=black ctermbg=darkred

" Use UTF-8 as the default buffer encoding
set enc=utf-8

" Always show status line, even for one window
set laststatus=2

" Scroll when cursor gets within 3 characters of top/bottom edge
set scrolloff=3

" Round indent to multiple of 'shiftwidth' for > and < commands
set shiftround

" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd

" Don't request terminal version string (for xterm)
set t_RV=

"--- Keystrokes ----------------
" h and l wrap between lines, cursor keys wrap in insertion mode
set whichwrap=h,l,~,[,]

" page down with <SPACE>, pageup with - or <BkSpc>
noremap <Space> <PageDown>
noremap <BS> <PageUp>

" Execute Python file being edited with <Shift> + e:
nnoremap E w:<CR>:!python % <CR>

" Shortcut to Close quickfix window with leader+c
nnoremap <leader>c <CR>:cclose<CR>

" Set autocomplete form 
set completeopt=menuone,longest,preview

"--- python formatting help ---
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Enable omni completion.
set omnifunc=syntaxcomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,ctp set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php,ctp set omnifunc=phpcomplete#CompletePHP
autocmd FileType vim set omnifunc=syntaxcomplete#Complete

" markdown
au BufEnter,Bufread *.mkd,*.md,*.mdown,*.markdown set tw=0

" http://www.brankovukelic.com/post/2091037293/turn-vim-into-powerful-javascript-editor"

" HTML (tab width 4 chr, no wrapping)
autocmd FileType html set sw=4
autocmd FileType html set ts=4
autocmd FileType html set sts=4
autocmd FileType html set textwidth=0
autocmd FileType html set nowrap
autocmd FileType html set fo-=t
autocmd FileType html set ai
autocmd FileType html set expandtab
autocmd FileType html set smarttab

" XHTML (tab width 4 chr, no wrapping)
autocmd FileType xhtml set sw=4
autocmd FileType xhtml set ts=4
autocmd FileType xhtml set sts=4
autocmd FileType xhtml set textwidth=0
autocmd FileType xhtml set nowrap
autocmd FileType xhtml set fo-=t
autocmd FileType xhtml set ai
autocmd FileType xhtml set expandtab
autocmd FileType xhtml set smarttab

" JAVASCRIPT (tab width 4 chr, no wrapping)
autocmd FileType javascript set sw=4
autocmd FileType javascript set ts=4
autocmd FileType javascript set sts=4
autocmd FileType javascript set textwidth=0
autocmd FileType javascript set nowrap
autocmd FileType javascript set fo-=t
autocmd FileType javascript set ai
autocmd FileType javascript set expandtab
autocmd FileType javascript set smarttab

" CSS (tab width 4 chr, wrap at 79th char)
autocmd FileType css set sw=4
autocmd FileType css set ts=4
autocmd FileType css set sts=4
autocmd FileType css set textwidth=80
autocmd FileType css set wrap
autocmd FileType css set fo+=t
autocmd FileType css set ai
autocmd FileType css set expandtab
autocmd FileType css set smarttab

" Python (tab width 4 chr, no wrapping)
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
autocmd FileType python set textwidth=0
autocmd FileType python set nowrap
autocmd FileType python set fo-=t
autocmd FileType python set ai
autocmd FileType python set expandtab
autocmd FileType python set smarttab
autocmd FileType python set colorcolumn=80

" Folding
" auto save folding : http://princ3.wordpress.com/2007/01/26/automaticaly-save-foldings-in-vim/
set viewoptions=folds
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

autocmd Syntax c,cpp,vim,xml,html,xhtml,js,php,py,python set foldmethod=manual
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR

"remove trailing whitespace
"http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.c++ :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.java :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.pl :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

" tabs, not spaces for php, ctp
au BufEnter,BufRead *.php,*.ctp set noexpandtab

" Autoclose quickfix windows when quit
" http://stackoverflow.com/questions/7476126/how-to-automatically-close-the-quick-fix-window-when-leaving-a-file
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END

" Auto close preview menu autocomplete after choose
" http://stackoverflow.com/questions/3105307/how-do-you-automatically-remove-the-preview-window-after-autocompletion-in-vim
"
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" ==================
" END GENERAL CONFIG
" ==================


" ============================
" BEGIN ENCRYPT/DECRYPT CONFIG
" ============================

let g:GPGPreferArmor=1
let g:GPGPreferSign=1
let g:GPGUseAgent=1
let g:GPGExecutable="gpg2"

" GnuPG Encrypt
vnoremap <Leader><C-e> :!gpg2 --batch --no-tty --yes --default-key 607A5E65 --default-recipient-self --armor --encrypt 2>/dev/null<CR>

" GnuPG Decrypt
vnoremap <Leader><C-d> :!gpg2 --batch --no-tty --yes --default-key 607A5E65 --default-recipient-self --armor --decrypt 2>/dev/null<CR>

" GnuPG Prepare Enviremont
nnoremap <F2> :set viminfo=<CR>:set noswapfile noundofile nobackup<CR>:set bin<CR>:let ch_save = &ch\|set ch=2<CR>

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

" ==========================
" END ENCRYPT/DECRYPT CONFIG
" ==========================


" ====================
" BEGIN PLUGINS CONFIG
" ====================

" Emmet
" let g:user_emmet_mode='n'    "only enable normal mode functions.
" let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

" FuzzFinder Shorcuts. Using F2 for opening FuzzyFinderTextMate
map <leader>f :FufFileWithCurrentBufferDir<CR>
map <leader>m :FufFileWithFullCwd<CR>
map <leader>b :FufBuffer<CR>

" MRU shorcuts
map <leader><space> :MRU<CR> 

" Pyflakes configuration
if has("gui_running")
    highlight SpellBad term=underline gui=undercurl guisp=Orange
endif

" Open Window Explorer NerdTree & Tagbar using (left-right sidebar) using <F6>

function! ToggleNERDTreeAndTagbar()
    let w:jumpbacktohere = 1

" Detect which plugins are open
    if exists('t:NERDTreeBufName')
        let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
    else
        let nerdtree_open = 0
    endif
    let tagbar_open = bufwinnr('__Tagbar__') != -1

" Perform the appropriate action
    if nerdtree_open && tagbar_open
        NERDTreeClose
        TagbarClose
    elseif nerdtree_open
        TagbarOpen
    elseif tagbar_open
        NERDTreeTabsToggle
    else
        NERDTreeTabsToggle
        TagbarOpen
    endif

" Jump back to the original window
    for window in range(1, winnr('$'))
        execute window . 'wincmd w'
        if exists('w:jumpbacktohere')
            unlet w:jumpbacktohere
            break
        endif
    endfor
endfunction

" now you can open NERDTree and Tagbar using F6
" http://stackoverflow.com/questions/6624043/how-to-open-or-close-nerdtree-and-tagbar-with-leader
nmap <F6> :call ToggleNERDTreeAndTagbar()<CR>

" TagBar Configuration
let g:tagbar_usearrows=1
let g:tagbar_width=30
let g:tagbar_singleclick=1

" Use <F5> to open Tagbar in Right side
nnoremap <F5> :TagbarToggle<CR>

" ===========================================================================
" NERDTree : https://github.com/scrooloose/nerdtree.git
" MODIFYING NERDTree MY CUSTOM
" how to using NERDTree :
" http://ykyuen.wordpress.com/2011/04/04/nerdtree-the-file-explorer-in-vivim/
" ===========================================================================

" Enable this for make NERDTree load every opening files
autocmd VimEnter * NERDTree " Make Always Load NERDTree every opening files
autocmd VimEnter * wincmd p " Automatically go to buffer every time open files

" FIXING NERDTree, automatically close if there no file edited
"https://github.com/scrooloose/nerdtree/issues/21
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Use <F4> for opening File Explorer
map <F4> :NERDTreeTabsToggle<CR>
let g:NERDTreeShowBookmarks=1
let g:NERDTreeMouseMode=3
let g:NERDTreeWinSize=30

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

" Taken from http://dotfiles.org/~joaoTrindade/.vimrc
" Minibuffer

" Show the miniBufExplorer from the start
 let g:miniBufExplorerMoreThanOne = 0 

"Not using because I don't use the vertival window
"Use a vertical windows
"let g:miniBufExplVSplit = 5

"Put the miniBufExplorer windows at the right
"let g:miniBufExplSplitBelow=1

"Maximum size of the mini buffer explorer window
let g:miniBufExplMaxSize = 15

"Still haven't discovered what it does
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1

" make tabs show complete (no broken on two lines)
let g:miniBufExplTabWrap = 1

" If you use other explorers like TagList you can (As of 6.2.8) set it at 1:
let g:miniBufExplModSelTarget = 1

" If you would like to single click on tabs rather than double clicking on them to goto the selected buffer.
let g:miniBufExplUseSingleClick = 1

"for buffers that have NOT CHANGED and are NOT VISIBLE.
highlight MBENormal guifg=LightBlue

" for buffers that HAVE CHANGED and are NOT VISIBLE
highlight MBEChanged guifg=Red

" buffers that have NOT CHANGED and are VISIBLE
highlight MBEVisibleNormal term=bold cterm=bold gui=bold guifg=Green

" buffers that have CHANGED and are VISIBLE
highlight MBEVisibleChanged term=bold cterm=bold gui=bold guifg=Green

let g:bufExplorerSortBy = "name"

autocmd BufRead,BufNew :call UMiniBufExplorer

" Stolen from http://dev.gentoo.org/~bass/configs/vimrc.html
" Adapt the status line accourding to the window

if has("autocmd")
    au FileType qf
                \ if &buftype == "quickfix" |
                \     setlocal statusline=%2*%-3.3n%0* |
                \     setlocal statusline+=\ \[Compiler\ Messages\] |
                \     setlocal statusline+=%=%2*\ %<%P |
                \ endif

    fun! FixMiniBufExplorerTitle()
        if "-MiniBufExplorer-" == bufname("%")
            setlocal statusline=%2*%-3.3n%0*
            setlocal statusline+=\[Buffers\]
            setlocal statusline+=%=%2*\ %<%P
        endif
    endfun

    au BufWinEnter *
                \ let oldwinnr=winnr() |
                \ windo call FixMiniBufExplorerTitle() |
                \ exec oldwinnr . " wincmd w"
endif

" Configure neocomplcache autocomplete 
" http://www.vim.org/scripts/script.php?script_id=2620

highlight Pmenu gui=bold

if has("gui_running")
    highlight SpellBad term=underline gui=undercurl guisp=Orange
endif

autocmd FileType python let b:delimitMate_autoclose = 1
autocmd FileType javascript let b:delimitMate_autoclose = 1
autocmd FileType css let b:delimitMate_autoclose = 1
autocmd FileType xml let b:delimitMate_autoclose = 1
autocmd FileType html let b:delimitMate_autoclose = 1

let g:virtualenv_directory = '/home/joaomanoel/.local/venvs'
let g:django_projects = '~/Meus_Projetos' "Sets all projects under project
let g:django_activate_virtualenv = 1 "Try to activate the associated virtualenv
let g:django_activate_nerdtree = 1 "Try to open nerdtree at the project root.

" Pyflakes
let g:pyflakes_use_quickfix = 0
let g:syntastic_python_checkers = ['/usr/local/bin/pyflakes']

" Pep8 using F8
let g:pep8_map='<F8>'

" Tidy HMTL5
let g:syntastic_html_tidy_exec = ['/usr/local/bin/tidy5']

" SimpyFold
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0

" Python style
let g:python_highlight_all=1 " Enable all plugin's highlighting.
let g:python_slow_sync=1 " For fast machines.
let g:python_print_as_function=1 " Color 'print' function.
let g:python_version_2=1 " Use Python2

" UltiSnips
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
let g:UltiSnipsEditSplit           = "vertical"

" Easytags
let g:easytags_always_enabled = 1
let g:easytags_cmd = '/usr/bin/ctags-exuberant'
let g:easytags_file = '~/.vim/tags'
let g:easytags_by_filetype = '~/.vim/tags_dir'
set tags=./tags;
let g:easytags_dynamic_files = 1

" Shell
let g:shell_mappings_enabled = 0
inoremap <Leader>fs <C-o>:Fullscreen<CR>
nnoremap <Leader>fs :Fullscreen<CR>
inoremap <Leader>op <C-o>:Open<CR>
nnoremap <Leader>op :Open<CR>

" TaskList
map <F7> :TaskList<CR>

" Fugitive
let g:statusline="%{fugitive#statusline()}"

" Python Django
nnoremap <leader>1 :call RelatedFile ("models.py")<cr>
nnoremap <leader>2 :call RelatedFile ("views.py")<cr>
nnoremap <leader>3 :call RelatedFile ("urls.py")<cr>
nnoremap <leader>4 :call RelatedFile ("admin.py")<cr>
nnoremap <leader>5 :call RelatedFile ("tests.py")<cr>
nnoremap <leader>6 :call RelatedFile ( "templates/" )<cr>
nnoremap <leader>7 :call RelatedFile ( "templatetags/" )<cr>
nnoremap <leader>8 :call RelatedFile ( "management/" )<cr>
nnoremap <leader>0 :e settings.py<cr>
nnoremap <leader>9 :e urls.py<cr>

let g:last_relative_dir = ''

fun! RelatedFile(file)
    "This is to check that the directory looks djangoish
    if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
        exec "edit %:h/" . a:file
        let g:last_relative_dir = expand("%:h") . '/'
        return ''
    endif
    if g:last_relative_dir != ''
        exec "edit " . g:last_relative_dir . a:file
        return ''
    endif
    echo "Cant determine where relative file is : " . a:file
    return ''
endfun

fun SetAppDir()
    if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
        let g:last_relative_dir = expand("%:h") . '/'
        return ''
    endif
endfun

autocmd BufEnter *.py call SetAppDir()
autocmd BufEnter *.djhtml set filetype=htmldjango
autocmd BufEnter *.djhtml let b:surround_{char2nr("v")} = "{{ \r }}"
autocmd BufEnter *.djhtml let b:surround_{char2nr("{")} = "{{ \r }}"
autocmd BufEnter *.djhtml let b:surround_{char2nr("%")} = "{% \r %}"
autocmd BufEnter *.djhtml let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
autocmd BufEnter *.djhtml let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
autocmd BufEnter *.djhtml let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
autocmd BufEnter *.djhtml let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
autocmd BufEnter *.djhtml let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

" Notes
let g:notes_directories = ['~/Documentos/JoaoManoel/Notas', '~/Dropbox/Notas']

" Sessions
"let g:loaded_session=1
let g:session_autoload='no'
let g:session_autosave='no'

" ================
" END VIMRC CONFIG
" ================


" =============================
" BEGIN VIMRC CONFIG PYTHON-IDE
" =============================

" Sample .vimrc file by Martin Brochhaus
" Presented at PyCon APAC 2012


" ============================================
" Note to myself:
" DO NOT USE <C-z> FOR SAVING WHEN PRESENTING!
" ============================================


" Automatic reloading of .vimrc
"" autocmd! bufwritepost .vimrc source %


" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

"" set pastetoggle=<F2>
"" set clipboard=unnamed


" Mouse and backspace
"" set mouse=a  " on OSX press ALT and click
"" set bs=2     " make backspace behave like normal again


" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
"" let mapleader = ","


" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
"" noremap <C-n> :nohl<CR>
"" vnoremap <C-n> :nohl<CR>
"" inoremap <C-n> :nohl<CR>


" Quicksave command
"" noremap <C-Z> :update<CR>
"" vnoremap <C-Z> <C-C>:update<CR>
"" inoremap <C-Z> <C-O>:update<CR>


" Quick quit command
"" noremap <Leader>e :quit<CR>  " Quit current window
"" noremap <Leader>E :qa!<CR>   " Quit all windows


" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
"" map <c-j> <c-w>j
"" map <c-k> <c-w>k
"" map <c-l> <c-w>l
"" map <c-h> <c-w>h


" easier moving between tabs
"" map <Leader>n <esc>:tabprevious<CR>
"" map <Leader>m <esc>:tabnext<CR>


" map sort function to a key
"" vnoremap <Leader>s :sort<CR>


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
"" vnoremap < <gv  " better indentation
"" vnoremap > >gv  " better indentation


" Show whitespace
" MUST be inserted BEFORE the colorscheme command
"" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"" au InsertLeave * match ExtraWhitespace /\s\+$/


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
"" set t_Co=256
"" color wombat256mod


" Enable syntax highlighting
" You need to reload this file for the change to apply
"" filetype off
"" filetype plugin indent on
"" syntax on


" Showing line numbers and length
"" set number  " show line numbers
"" set tw=79   " width of document (used by gd)
"" set nowrap  " don't automatically wrap on load
"" set fo-=t   " don't automatically wrap text when typing
"" set colorcolumn=80
"" highlight ColorColumn ctermbg=233


" easier formatting of paragraphs
"" vmap Q gq
"" nmap Q gqap


" Useful settings
"" set history=700
"" set undolevels=700


" Real programmers don't use TABs but spaces
"" set tabstop=4
"" set softtabstop=4
"" set shiftwidth=4
"" set shiftround
"" set expandtab


" Make search case insensitive
"" set hlsearch
"" set incsearch
"" set ignorecase
"" set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
"" set nobackup
"" set nowritebackup
"" set noswapfile


" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
"" call pathogen#infect()


" ============================================================================
" Python IDE Setup
" ============================================================================


" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
"" set laststatus=2


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
"" let g:ctrlp_max_height = 30
"" set wildignore+=*.pyc
"" set wildignore+=*_build/*
"" set wildignore+=*/coverage/*


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
"" let g:jedi#usages_command = "<leader>z"
"" let g:jedi#popup_on_dot = 0
"" let g:jedi#popup_select_first = 0
"" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
"" set completeopt=longest,menuone
"" function! OmniPopup(action)
""     if pumvisible()
""         if a:action == 'j'
""             return "\<C-N>"
""         elseif a:action == 'k'
""             return "\<C-P>"
""         endif
""     endif
""     return a:action
"" endfunction

"" inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
"" inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
"" set nofoldenable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" END VIMRC CONFIG PYTHON-IDE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
