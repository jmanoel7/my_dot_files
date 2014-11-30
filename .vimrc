" ~/.vimrc file -> config file for vim text editor

" --- END VUNDLE CONFIG ---

set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
" plugin on GitHub repo
"Plugin 'Valloric/YouCompleteMe'


" Meus Plugins
"Plugin 'jmcomets/vim-pony'
"Plugin 'project.tar.gz'
"Plugin 'ervandew/supertab'
"Plugin 'rkulla/pydiction'
Plugin 'tpope/vim-fugitive'
Plugin 'django.vim'
Plugin 'python.vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'sukima/xmledit'
Plugin 'cwood/pysource.vim'
Plugin 'cwood/vim-django'
Plugin 'scrooloose/nerdtree'
Plugin 'kevinw/pyflakes-vim'
Plugin 'hdima/python-syntax'
Plugin 'pep8'
Plugin 'tmhedberg/SimpylFold'
Plugin 'taglist.vim'
Plugin 'TaskList.vim'
Plugin 'OceanBlack256'
Plugin 'eclipse.vim'
Plugin 'Wombat'
Plugin 'wombat256.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" --- END VUNDLE CONFIG ---


" --- BEGIN GENERAL CONFIG ---

syntax on
set nocompatible
filetype indent plugin on
set hidden
set autowriteall
set wildmenu
set showcmd
set hlsearch
set nomodeline
set backspace=indent,eol,start
set autoindent
set ruler
set laststatus=2
set confirm
"set visualbell
"set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F12>
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set omnifunc=syntaxcomplete#Complete
map Y y$
nnoremap <C-L> :nohl<CR><C-L>
colorscheme mywombat

" --- END GENERAL CONFIG ---


" --- BEGIN PYTHON AND DJANGO CONFIG ---

autocmd FileType python set shiftwidth=4
autocmd FileType python set tabstop=4
autocmd FileType python set softtabstop=4
autocmd FileType python set autoindent
autocmd FileType python set expandtab

autocmd FileType python set complete+=k/home/joaomanoel/.vim/bundle/python-syntax/syntax/python.vim
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci

autocmd FileType python let b:delimitMate_autoclose = 1
autocmd FileType javascript let b:delimitMate_autoclose = 1
autocmd FileType css let b:delimitMate_autoclose = 1
autocmd FileType xml let b:delimitMate_autoclose = 1
autocmd FileType html let b:delimitMate_autoclose = 1

let g:virtualenv_directory = '/home/joaomanoel/.local/venvs'
let g:django_projects = '~/Meus_Projetos' "Sets all projects under project
let g:django_activate_virtualenv = 1 "Try to activate the associated virtualenv
let g:django_activate_nerdtree = 1 "Try to open nerdtree at the project root.

"let g:pydiction_location = '/home/joaomanoel/.vim/bundle/pydiction/complete-dict'
"let g:SuperTabDefaultCompletionType = "context"

let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader><F8>'
let g:syntastic_python_checkers = ['/usr/local/bin/pyflakes']
let g:syntastic_html_tidy_exec = ['/usr/local/bin/tidy']
let g:python_highlight_all = 1
let g:python_version_2 = 1
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0

let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
let g:UltiSnipsEditSplit           = "vertical"

let Tlist_Ctags_Cmd='/usr/bin/ctags-exuberant'
set tags=./tags;/
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
"map <F6>  :TlistAddFilesRecursive ~/Meus_Projetos/locafan [^_]*py\|*html\|*css\|*js<CR>

" Display function name in status bar
let g:ctags_statusline=1

" Automatically start script
let generate_tags=1

" Displays taglist results in a vertical window
let Tlist_Use_Horiz_Window=0

" Shorter commands to toggle Taglist display:
map <F4> :TlistToggle<CR>

" Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1

map <F3> :TaskList<CR>

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

let g:statusline="%{fugitive#statusline()}"

let g:last_relative_dir = ''

nnoremap \1 :call RelatedFile ("models.py")<cr>
nnoremap \2 :call RelatedFile ("views.py")<cr>
nnoremap \3 :call RelatedFile ("urls.py")<cr>
nnoremap \4 :call RelatedFile ("admin.py")<cr>
nnoremap \5 :call RelatedFile ("tests.py")<cr>
nnoremap \6 :call RelatedFile ( "templates/" )<cr>
nnoremap \7 :call RelatedFile ( "templatetags/" )<cr>
nnoremap \8 :call RelatedFile ( "management/" )<cr>
nnoremap \0 :e settings.py<cr>
nnoremap \9 :e urls.py<cr>

fun! RelatedFile(file)
    #This is to check that the directory looks djangoish
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

" --- END PYTHON AND DJANGO CONFIG ---


" --- BEGIN ENCRYPTION CONFIG ---

" Transparent editing of gpg encrypted files.
" By Wouter Hanegraaff
augroup encrypted
    au!

    " First make sure nothing is written to ~/.viminfo while editing
    " an encrypted file.
    autocmd BufReadPre,FileReadPre *.gpg set viminfo=
    " We don't want a various options which write unencrypted data to disk
    autocmd BufReadPre,FileReadPre *.gpg set noswapfile noundofile nobackup

    " Switch to binary mode to read the encrypted file
    autocmd BufReadPre,FileReadPre *.gpg set bin
    autocmd BufReadPre,FileReadPre *.gpg let ch_save = &ch|set ch=2
    " (If you use tcsh, you may need to alter this line.)
    autocmd BufReadPost,FileReadPost *.gpg '[,']!gpg --batch --no-tty --yes --default-key 607A5E65 --default-recipient-self --armor --decrypt 2>/dev/null

    " Switch to normal mode for editing
    autocmd BufReadPost,FileReadPost *.gpg set nobin
    autocmd BufReadPost,FileReadPost *.gpg let &ch = ch_save|unlet ch_save
    autocmd BufReadPost,FileReadPost *.gpg execute ":doautocmd BufReadPost " . expand("%:r")

    " Convert all text to encrypted text before writing
    " (If you use tcsh, you may need to alter this line.)
    autocmd BufWritePre,FileWritePre *.gpg '[,']!gpg --batch --no-tty --yes --default-key 607A5E65 --default-recipient-self --armor --encrypt 2>/dev/null
    " Undo the encryption so we are back in the normal text, directly
    " after the file has been written.
    autocmd BufWritePost,FileWritePost *.gpg u
augroup END


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

" --- END ENCRYPTION CONFIG ---

