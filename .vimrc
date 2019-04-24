" version: 8.3.1

" ============================================================================
" Avoid modify this section, unless you are very sure of what you are doing
set background=dark

"let vim_plug_just_installed = 0
"let vim_plug_path = expand('~/.vim/autoload/plug.vim')
"if !filereadable(vim_plug_path) echo "Installing Vim-plug..."
"    echo ""
"    silent !mkdir -p ~/.vim/autoload
"    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"    let vim_plug_just_installed = 1
"endif
"
"" manually load vim-plug the first time
"if vim_plug_just_installed
"    :execute 'source '.fnameescape(vim_plug_path)
"endif

let mapleader = ","
set runtimepath^=~/.vim/bash-support
let g:BASH_MapLeader  = ','

" ============================================================================
" Remove comments on the next 2 lines to activate pathogen if you want to use
" plugins in your .vim/bundle/
"       ACTIVATE PATHOGEN

"call pathogen#runtime_append_all_bundles()
"execute pathogen#infect()

" Activate plugins using vim-plug to manage them
" This needs to be here, so vim-plug knows we are declaring the plugins we
" want to use
" You can disable or add new ones here:

call plug#begin('~/.vim/plugged')

" Plugins from github repos:
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Valloric/YouCompleteMe'
let g:ycm_python_binary = 'python3'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1

Plug 'python-mode/python-mode', { 'branch': 'develop' }
let g:pymode = 1
let g:pymode_python = 'python3'
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
"let g:pymode_breakpoint_bind = '<F6>'
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_unmodified = 1
let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_cwindow = 1
let g:pymode_lint_signs = 1
let g:pymode_lint_todo_symbol = 'WW'
let g:pymode_lint_comment_symbol = 'CC'
let g:pymode_lint_visual_symbol = 'RR'
let g:pymode_lint_error_symbol = 'EE'
let g:pymode_lint_info_symbol = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'
"let g:pymode_lint_options_pep8 =
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
let g:pymode_rope_show_doc_bind = '<C-c>d'
let g:pymode_rope_regenerate_on_write = 1
let g:pymode_syntax = 1
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_all = 1
let g:pymode_preview_height = &previewheight
let g:pymode_preview_position = 'botright'
let g:pymode_indent = 1
"let g:pymode_folding = 0
let g:pymode_motion = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_virtualenv = 1
let g:pymode_virtualenv_path = $VIRTUAL_ENV
let g:pymode_lint_sort = []
let g:pymode_syntax_print_as_function = 0
let g:pymode_syntax_highlight_async_await = g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator = g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator = g:pymode_syntax_all
let g:pymode_syntax_highlight_self = g:pymode_syntax_all
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_syntax_string_formatting = g:pymode_syntax_all
let g:pymode_syntax_string_format = g:pymode_syntax_all
let g:pymode_syntax_string_templates = g:pymode_syntax_all
let g:pymode_syntax_doctests = g:pymode_syntax_all
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all
let g:pymode_syntax_builtin_types = g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all
let g:pymode_syntax_docstrings = g:pymode_syntax_all
"Plug 'neoclide/coc', {'do': { -> coc#util#install()}}
"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'docker/docker'
Plug 'tpope/vim-fugitive'
Plug 'andrewstuart/vim-kubernetes'
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'
Plug 'skywind3000/asyncrun.vim'
let g:asyncrun_open = 8
" Override configs by directory
Plug 'arielrossanigo/dir-configs-override.vim'
" Better file browser
Plug 'scrooloose/nerdtree'
Plug 'WolfgangMehner/bash-support'
" Code commenter
Plug 'scrooloose/nerdcommenter'
" Class/module browser
Plug 'majutsushi/tagbar'
" Code and files fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
Plug 'fisadev/vim-ctrlp-cmdpalette'
" Zen coding
Plug 'mattn/emmet-vim'
" Git integration
"Plug 'motemen/git-vim'
" Tab list panel
Plug 'kien/tabman.vim'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Terminal Vim with 256 colors colorscheme
Plug 'fisadev/fisa-vim-colorscheme'
" Consoles as buffers
Plug 'rosenfeld/conque-term'
" Pending tasks list
Plug 'fisadev/FixedTaskList.vim'
" Surround
Plug 'tpope/vim-surround'
" Autoclose
Plug 'Townk/vim-autoclose'
" Indent text object
Plug 'michaeljsmith/vim-indent-object'
" Indentation based movements
Plug 'jeetsukumaran/vim-indentwise'
" Python autocompletion, go to definition.
"Plug 'davidhalter/jedi-vim'
" Better autocompletion
"Plug 'Shougo/neocomplcache.vim'
" Snippets manager (SnipMate), dependencies, and snippets repo
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'
" Git/mercurial/others diff icons on the side of the file lines
Plug 'mhinz/vim-signify'
" Automatically sort python imports
Plug 'fisadev/vim-isort'
" Drag visual blocks arround
Plug 'fisadev/dragvisuals.vim'
" Window chooser
Plug 't9md/vim-choosewin'
" Python and other languages code checker
Plug 'scrooloose/syntastic'
" Paint css colors with the real color
Plug 'lilydjwg/colorizer'
" Ack code search (requires ack installed in the system)
Plug 'mileszs/ack.vim'
if has('python')
    " YAPF formatter for Python
    Plug 'pignacio/vim-yapf-format'
endif
" Relative numbering of lines (0 is the current line)
" (disabled by default because is very intrusive and can't be easily toggled
" on/off. When the plugin is present, will always activate the relative
" numbering every time you go to normal mode. Author refuses to add a setting
" to avoid that)
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/visualrepeat'
Plug 'myusuf3/numbers.vim'
Plug 'pearofducks/ansible-vim'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/grep.vim'
Plug 'vim-scripts/CSApprox'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'

" Plugins from vim-scripts repos:
" Search results counter
Plug 'vim-scripts/IndexedSearch'
" XML/HTML tags navigation
Plug 'vim-scripts/matchit.zip'
" Gvim colorscheme
Plug 'vim-scripts/Wombat'
" Yank history navigation
Plug 'vim-scripts/YankRing.vim'

" Tell vim-plug we finished declaring plugins, so it can load them
call plug#end()

" ============================================================================

" no vi-compatible
set nocompatible

" allow plugins by file type (required for plugins!)
filetype plugin on
filetype indent on

" tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set encoding=utf-8
set scrolloff=3
set autoindent
set showcmd
set hidden
set wildmenu
set visualbell
set history=1000
set undolevels=10000
colorscheme badwolf
set nobackup
set noswapfile
set splitright
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set mouse=a
"set pastetoggle=<F2>
set relativenumber
set number
set undofile
set undodir=/tmp

set shell=/bin/zsh
set lazyredraw
set matchtime=3
" ========================================================================================
" Map : to ; also in command mode.
nnoremap ; :
vmap ; :
noremap <silent> <leader>/ :nohlsearch<CR>
" ========================================================================================

" Set title to window
set title

" Dictionary path, from which the words are being looked up.
" ========================================================================================
set dictionary=/usr/share/dict/words

" ========================================================================================
" Make Vim able to edit corntab fiels again.
set backupskip=/tmp/*,/private/tmp/*"

"Settings for Searching and Moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %

" ========================================================================================
" go to next/previous tag
"nnoremap <leader>f :tnext<cr>
"nnoremap <leader>d :tprev<cr>
"nnoremap <leader>tj :tjump<cr>

",W Command to remove white space from a file.
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" ========================================================================================
" Make Vim to handle long lines nicely.
set wrap
set textwidth=79
set colorcolumn=+1
set formatoptions=qrn1
set noshowmode

" ========================================================================================
" To  show special characters in Vim
"set list
set listchars=tab:▸\ ,eol:¬

" ========================================================================================
" set unnamed clipboard
set clipboard=unnamedplus


"==========================================================================="
" Different search patterns
let g:cpp_pattern = "*.{cpp,c,h,hpp}"
let g:java_pattern = "*.{java}"
let g:makefile_pattern = "Makefile*"
let g:text_pattern = "*.{txt,text}"
let g:python_pattern = "*.{py}"
let g:cpp_java_pattern = "*.{cpp,c,h.hpp,java,cc,hh}"

"==========================================================================="
" C\C++ projects settings
"==========================================================================="
"Global project settings
let g:project_root = "."

let g:search_root = g:project_root
let g:search_pattern = "*.*"
"==========================================================================="
" Get Rid of stupid Goddamned help keys
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" Just some text to make a write test of this vimrc file "
"==========================================================================="
" Set vim to save the file on focus out.
au FocusLost * :wa
"==========================================================================="
" Redraw screen every time when focus gained
au FocusGained * :redraw!
"==========================================================================="

" ,ft Fold tag, helpful for HTML editing.
nnoremap <F8> vatzf

" ,q Re-hardwrap Paragraph
nnoremap <leader>q gqip

" ,ev Shortcut to edit .vimrc file on the fly on a vertical window.
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" ========================================================================================
" VIM-easy-align  plugin
"
vmap <Enter> <Plug>(EasyAlign)
" Start interacptive EasyAlign for a motion/text object (e.g. <Leader>aip)
"noremap <Leader>b <Plug>(EasyAlign)

" ========================================================================================
" VIM-signature plugin
" https://github.com/kshenoy/vim-signature
nnoremap <leader>sm :SignatureToggleSigns<cr>

" ========================================================================================
" map ctrl+j to ctrl+m (for INSERT mode)in order to be more consistent with bash terminal
"let g:BASH_Ctrl_j='off'
"inoremap <C-j> <C-m>
"noremap  <C-j> <C-m>

"let g:indentLine_setColors = 0


"==========================================================================="
" Working with split screen nicely
" Resize Split When the window is resized"
au VimResized * :wincmd =

"==========================================================================="
" Wildmenu completion "
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn " Version Controls"
set wildignore+=*.aux,*.out,*.toc "Latex Indermediate files"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "Binary Imgs"
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "Compiled Object files"
set wildignore+=*.spl "Compiled speolling world list"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.DS_Store "OSX SHIT"
set wildignore+=*.luac "Lua byte code"
set wildignore+=migrations "Django migrations"
set wildignore+=*.pyc "Python Object codes"
set wildignore+=*.orig,*.rej "Merge resolution files"

"==========================================================================="
" Make Sure that Vim returns to the same line when we reopen a file"
augroup line_return
    au!
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ execute 'normal! g`"zvzz' |
                \ endif
augroup END

"==========================================================================="
" go to place of last change
nnoremap g; g;zz

" =========== END Basic Vim Settings ===========

" ========== Plugin Settings =========="


" ENABLE CTRL INTERPRETING FOR VIM
silent !stty -ixon > /dev/null 2>/dev/null

"==========================================================================="
"Make window mosaic
noremap <leader>mon :split<cr>:vsplit<cr><C-Down>:vsplit<cr><C-Up><leader>l
imap <leader>mon <ESC>:split<cr>:vsplit<cr><C-Down>:vsplit<cr><C-Up><leader>li

"==========================================================================="
" Make check spelling on or off
noremap <leader>cson   :set spell<CR>
noremap <leader>csoff  :set nospell<CR>


"==========================================================================="
" Indentation (got to opening bracket and indent section)

noremap <leader>ip [{=%

"==========================================================================="
"Highlight section between brackets (do to opening bracket and highlight)
noremap <leader>hp [{%v%<Home>
"
"==========================================================================="
" Map copy delete and paste to system clipboard
"
vmap <Leader>y "+y
vmap <Leader>d "+d
noremap <Leader>y "+yy
noremap <Leader>d "+dd

noremap <Leader>p "+p
noremap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

"==========================================================================="
" Double learder for selection whole line
noremap <Leader>v V

"==========================================================================="
function! FindProjectRoot(lookFor)
    let pathMaker='%:p'
    while(len(expand(pathMaker))>len(expand(pathMaker.':h')))
        let pathMaker=pathMaker.':h'
        let fileToCheck=expand(pathMaker).'/'.a:lookFor
        if filereadable(fileToCheck)||isdirectory(fileToCheck)
            return expand(pathMaker)
        endif
    endwhile
    return 0
endfunction

"==========================================================================="
function! BuildAndInstallCppApp()
    let project_root = FindProjectRoot("main.cpp")
    if project_root == 0
        let project_root = "."
    endif
    execute "!cd ".project_root."/build; sudo make install;"
endfunction

"==========================================================================="
function! BuildAndInstallCSharpApp()
    execute "!xbuild;"
endfunction

"==========================================================================="
function! BuildAndInstallQtApp()
    execute "!make;"
endfunction

function! OpenQuickFixInRightLocation()
    execute ":TagbarClose"
    execute ":copen"
    execute ":TagbarOpen"
    " TODO - improve me
    " go to window one above the quickfix window
    execute ":normal \<C-j>\<C-l>100\<C-j>\<C-k>"
endfunction

"==========================================================================="
" Improve detecting filetype (ex. for files starting with /bin/echo syntax
" should be as for sh files)
function! DetectFileType()
    "if did_filetype()
      "finish
    "endif
    if getline(1) =~ '^#!.*/bin/echo.*'
      setfiletype sh
    endif
endfunction

"==========================================================================="
" Quickfix navigation
nnoremap <leader>oq :call OpenQuickFixInRightLocation()<cr>
nnoremap <leader>cq :cclose<cr>
nnoremap <leader>cw :q<cr>:cclose<cr>
nnoremap <leader>n :cnext<cr>
nnoremap <leader>p :cprevious<cr>

"==========================================================================="
" CMake
"noremap <F8> <C-s> :call BuildAndInstallCppApp()<cr>
"imap <F8> <ESC> <C-s> :call BuildAndInstallCppApp()<cr>
"
""==========================================================================="
"" Make
"noremap <C-F8> <C-s> :call BuildAndInstallQtApp()<cr>
"imap <C-F8> <ESC> <C-s> :call BuildAndInstallQtApp()<cr>
"
""==========================================================================="
"" CSharp make
"noremap <C-F5> <C-s> :call BuildAndInstallCSharpApp()<cr>
"imap <C-F5> <ESC> <C-s> :call BuildAndInstallCSharpApp()<cr>

"==========================================================================="
" Normal make
"noremap <F9>> :set makeprg=make\ -C\ .<cr> :make --no-print-directory <cr> :TagbarClose<cr> :cw <cr> :TagbarOpen <cr>
"imap <F9> <ESC> set makeprg=make\ -C\ ./build<cr> :make --no-print-directory <cr> :TagbarClose<cr> :cw <cr> :TagbarOpen <cr>i

"==========================================================================="
" Force Saving Files that Require Root Permission
"
command! Sudowrite w !sudo tee % > /dev/null

"==========================================================================="
" TAB and Shift-TAB in normal mode cycle buffers
"
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>

" Configure autocomplete tool
let g:acp_EnableAtStartup = 1

"==========================================================================="
set laststatus=2
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set nowrap

"==========================================================================="
" Edit .vimrc file
"noremap <silent> <leader>ov :e $MYVIMRC<CR>
"noremap <silent> <leader>sv :w<CR> :so $MYVIMRC<CR>

"==========================================================================="
" Manpage for word under cursor via 'K' in command moderuntime
runtime ftplugin/man.vim
noremap <buffer> <silent> K :exe "Man" expand('<cword>') <CR>

"==========================================================================="
au BufNewFile,BufRead *.c,*.cc,*.cpp,*.h call SetupCandCPPenviron()
function! SetupCandCPPenviron()
    "
    " Search path for 'gf' command (e.g. open #include-d files)
    "
    set path+=/usr/include/c++/**

    "
    " Especially for C and C++, use section 3 of the manpages
    "
    noremap <buffer> <silent> K :exe "Man" 3 expand('<cword>') <CR>
endfunction


"==========================================================================="
" CCTree configuration
let g:CCTreeRecursiveDepth = 1
let g:CCTreeMinVisibleDepth = 1
let g:CCTreeOrientation = "rightbelow"

function! LoadCCTree()
    let databaseDir = $HOME."/.vim/cscope_databases"
    if IsFileAlreadyExists ( databaseDir."/last_project_cscope")
        execute "silent :CCTreeLoadDB ".databaseDir."/last_project_cscope"
    endif
    let userDef = substitute(system("echo $USER"), "\n", '', '')
    if userDef == "docker" && IsFileAlreadyExists( databaseDir."/dtv_project_cscope")
        execute "silent :CCTreeAppendDB ".databaseDir."/dtv_project"
    endif
endfunction


" CCTree shortucts"
noremap <leader>ct :silent call LoadCCTree()<cr>
noremap <buffer> <silent> <leader>cr :execute "CCTreeTraceReverse ".expand('<cword>')<cr>
noremap <buffer> <silent> <leader>cf :execute "CCTreeTraceForward ".expand('<cword>')<cr>

let g:CCTreeKeyHilightTree = '<C-l>'        " Static highlighting
let g:CCTreeKeySaveWindow = '<C-\>y'
let g:CCTreeKeyToggleWindow = '<C-\>w'
let g:CCTreeKeyCompressTree = 'zs'     " Compress call-tree
let g:CCTreeKeyDepthPlus = '<C-\>='
let g:CCTreeKeyDepthMinus = '<C-\>-'

"==========================================================================="
function! LoadCScopeDatabases()
    let databaseDir = $HOME."/.vim/cscope_databases"
    if IsFileAlreadyExists ( databaseDir."/last_project_cscope")
        execute ":silent cs add ".databaseDir."/last_project_cscope"
    endif
    if IsFileAlreadyExists ( databaseDir."/gstreamer_cscope")
        execute ":silent cs add ".databaseDir."/gstreamer_cscope"
    endif
    if IsFileAlreadyExists ( databaseDir."/mythtv_cscope")
        execute ":silent cs add ".databaseDir."/mythtv_cscope"
    endif
    if IsFileAlreadyExists ( databaseDir."/cpp_scope")
        execute ":silent cs add ".databaseDir."/cpp_scope"
    endif
    "load dtv_project only when we are working on docker
    let userDef = substitute(system("echo $USER"), "\n", '', '')
    if userDef == "docker" && IsFileAlreadyExists( databaseDir."/dtv_project_cscope")
        execute ":silent cs add ".databaseDir."/dtv_project_cscope"
    endif
    echohl StatusLine | echo "CScope databases loaded successfully..." | echohl None
endfunction


function! UpdateCscopeDatabase(basedir)
    let databaseDir = $HOME."/.vim/cscope_databases"
    let findCommand = "find `pwd` -name '*.c' -o -name '*.h' -o -name '*.java' -o -name '*.py' -o -name '*.js' -o -name '*.hpp' -o -name '*.hh' -o -name '*.cpp' -o -name '*.cc' > cscope.files"

    execute ":silent !cd ".a:basedir." && ".findCommand." && cscope -b && cp cscope.out ".databaseDir."/last_project_cscope && rm cscope.files cscope.out"
    execute ":silent cs reset"

    call UpdateTags(a:basedir)
    execute ":redraw!"

endfunction

function! UpdateAllCscopeDatabases()
    let databaseDir = $HOME."/.vim/cscope_databases"
    let tagsDir = $HOME."/.vim/tags"

    call UpdateCscopeDatabase("/usr/src/gstreamerInstall")
    execute ":silent !cp ".databaseDir."/last_project_cscope ".databaseDir."/gstreamer_cscope"
    execute ":silent !cp ".tagsDir."/last_project_tags ".tagsDir."/gstreamer_tags"

    call UpdateCscopeDatabase($HOME."/projects/xmementoit/digitalTVOpenSource/mythtv")
    execute ":silent !cp ".databaseDir."/last_project_cscope ".databaseDir."/mythtv_cscope"
    execute ":silent !cp ".tagsDir."/last_project_tags ".tagsDir."/mythtv_tags"

    call UpdateCscopeDatabase($HOME."/.vim/tags/cpp_src")
    execute ":silent !cp ".databaseDir."/last_project_cscope ".databaseDir."/cpp_scope"
    execute ":silent !cp ".tagsDir."/last_project_tags ".tagsDir."/cpp_tags"

    call UpdateCscopeDatabase("/usr/local/include")
    execute ":silent !cp ".databaseDir."/last_project_cscope ".databaseDir."/usr_local_include_cscope"
    execute ":silent !cp ".tagsDir."/last_project_tags ".tagsDir."/usr_local_include_tags"

    call UpdateCscopeDatabase(".")
    execute ":redraw!"
endfunction

function! UpdateTags(basedir)
    execute ":silent !cd ".a:basedir." && ctags -R --sort=yes --fields=+iaSnkt --extra=+q+f --exclude=build -f ~/.vim/tags/last_project_tags `pwd`"
    execute ":redraw!"
endfunction

function! IsFileAlreadyExists(filename)
   if filereadable(a:filename)
        return 1
    else
        return 0
    endif
endfunction

"==========================================================================="
"Invoke this function if we are opening main.cpp or main.c file"
function! CheckIfMain()
    if !IsFileAlreadyExists(expand("%:t")) && expand("%:t:r") == "main" && expand("%:e") == "cpp"
        execute 'normal! 1G 1000dd'
        execute ':Template maincpp'
        execute ':w'
    elseif !IsFileAlreadyExists(expand("%:t")) && expand("%:t:r") == "main" && expand("%:e") == "c"
        execute 'normal! 1G 1000dd'
        execute ':Template mainc'
        execute ':w'
    endif
endfunction

"==========================================================================="
"Invoke this function when you would like to create new C++ class files (.cpp
"and .h file)"
function! CreateCppClassFiles(className)
    "create cpp file
    if !IsFileAlreadyExists(a:className.'.cpp')
        execute ':n '.a:className.'.cpp'
        execute 'normal! 1G 1000dd'
        execute ':Template cppclass'
        execute ':w'
    else
        execute ':n '.a:className.'.cpp'
    endif
    "create h file
    if !IsFileAlreadyExists(a:className.'.h')
        execute ':n '.a:className.'.h'
        execute 'normal! 1G 1000dd'
        execute ':Template cppclassh'
        execute ':w'
    else
        execute ':n '.a:className.'.h'
    endif
endfunction


" =========== Startup commands =========="

"autocmd VimEnter * SignatureToggleSigns
if &diff
    "autocmd VimEnter * NERDTree .
else
   "autocmd VimEnter * NERDTree .
   "autocmd VimEnter * TagbarOpen
    autocmd VimEnter * helptags ~/.vim/doc
    "autocmd VimEnter * exe 2 . "wincmd w"
    autocmd VimEnter * call CheckIfMain()
    autocmd VimEnter * call LoadCScopeDatabases()
    autocmd VimEnter * call DetectFileType()

    autocmd BufWritePost ~/.vimrc source ~/.vimrc
    "au BufNewFile,BufRead * :set relativenumber " relative line numbers

endif

" =========== Leaving commands =========="

autocmd VimLeave * SessionSaveAs vim_auto_saved_session


"===================================================================================================
" Commenting blocks of code.
autocmd FileType c,cppva,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> <leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>'"'"


" ========================================================================================
" SURRENDINGS

autocmd FileType c,cpp let b:surround_105  = "if (condition) {\n \r } \n"
autocmd FileType c,cpp let b:surround_102  = "for (int i=0; i<condition;i++) {\n\r}\n"
autocmd FileType c,cpp let b:surround_119  = "while (condition) {\n\r}\n"
autocmd FileType c,cpp let b:surround_112  = "printf(\"\r\\n\");"
autocmd FileType c,cpp let b:surround_99   = "/*\n\r*/"

autocmd FileType html  let b:surround_102  = "<font face=\"courier\">/r</font>"


"create new command for creating cpp class"
command! -nargs=1 NewCppClass call CreateCppClassFiles("<args>")

"==========================================================================="
" setting ctags
set tags+=~/.vim/tags/last_project_tags
set tags+=~/.vim/tags/dtv_project_tags
set tags+=~/.vim/tags/gstreamer_tags
set tags+=~/.vim/tags/mythtv_tags
set tags+=~/.vim/tags/cpp_tags
set tags+=~/.vim/tags/usr_local_include_tags

"==========================================================================="
noremap <leader>ud :silent call UpdateCscopeDatabase(".")<cr>:w<cr>
imap <leader>ud <ESC>l:silent call UpdateCscopeDatabase(".")<cr>:w<cr>i

noremap <leader>uad :call UpdateAllCscopeDatabases()<cr>:w<cr>
imap <leader>uad <ESC>l:call UpdateAllCscopeDatabases()<cr>:w<cr>i

"==========================================================================="
set autochdir
let NERDTreeChDirMode=2

" =========== END Plugin Settings =========="
"===================================================================================================
" Commenting blocks of code.
autocmd FileType c,cppva,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> <leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>'"'"

" ========================================================================================
" " Automatically go to the end of pasted text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" set F2 as shortcut for toggle INSERT (paste) mode
nnoremap <F6> :set invpaste paste?<CR>

" ========================================================================================
" quick-scope plugin settings
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Trigger a highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']

let g:qs_first_occurrence_highlight_color = 155       " terminal vim

let g:qs_second_occurrence_highlight_color = 81         " terminal vim

" =======================================================================================
" yankring
" 2nd and 3rd <cr> is needed only if you use DidYouMean plugin ()
noremap <leader>yr :YRShow <cr><cr><cr>
let g:yankring_replace_n_pkey = '<leader>yp'

" ========================================================================================
" vimdiff options
" Always use vertical diffs
set diffopt+=vertical
if &diff
    colorscheme badwolf_diff
endif

" ========================================================================================
" ack and silversearcher-ag
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

noremap  <leader>ag :exe "Ack " expand('<cword>') <CR>

" ========================================================================================
" CtrlSF shortcuts
noremap     <C-F>f :exe "CtrlSF" expand('<cword>') <CR>
vmap     <C-F>F <Plug>CtrlSFVwordExec <CR>
noremap     <C-F>n <Plug>CtrlSFCwordPath <CR>
noremap     <C-F>p <Plug>CtrlSFPwordPath <CR>
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" ========================================================================================
" remap movement for wrapped lines being the same as for non-wrapped lines
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
" ========================================================================================
" " Quickly select text which I just pasted
noremap gV `[v`]

" tab length exceptions on some file types
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType htmldjango setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4

" always show status bar
set ls=2

" incremental search
set incsearch
" highlighted search results
set hlsearch

" syntax highlight on
syntax on

" tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm
map tt :tabnew
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

" navigate windows with meta+arrows
map <C-l> <c-w>l
map <C-h> <c-w>h
map <C-k> <c-w>k
map <C-j> <c-w>j


" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
" Disabled by default because preview makes the window flicker
"set completeopt-=preview

" save as sudo
ca w!! w !sudo tee "%"

" simple recursive grep
"noremap ,r :Ack
"noremap ,wr :Ack <cword><CR>

" use 256 colors when possible
if (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256') || has('nvim')
	let &t_Co = 256
    colorscheme badwolf
else
    colorscheme molokai_dark
endif

" colors for gvim
if has('gui_running')
    colorscheme badwolf
endif

" better backup, swap and undos storage
set directory=~/.vim/dirs/tmp     " directory to place swap files in
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo

" store yankring history file there too
let g:yankring_history_dir = '~/.vim/dirs/'

" create needed directories if they don't exist
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif

" ============================================================================
" Plugins settings and mappings
" Edit them as you wish.

" Tagbar -----------------------------

" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1

" NERDTree -----------------------------

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
"noremap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']


" Tasklist ------------------------------

" show pending tasks list
map <F2> :TaskList<CR>

" CtrlP ------------------------------

" file finder mapping
"let g:ctrlp_map = ',e'
" tags (symbols) in current file finder mapping
"noremap ,g :CtrlPBufTag<CR>
"" tags (symbols) in all files finder mapping
"noremap ,G :CtrlPBufTagAll<CR>
"" general code finder in all files mapping
"noremap ,f :CtrlPLine<CR>
"" recent files finder mapping
"noremap ,m :CtrlPMRUFiles<CR>
" commands finder mapping
"noremap ,c :CtrlPCmdPalette<CR>
" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction
" same as previous mappings, but calling with current word as default text
"noremap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
"noremap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
"noremap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
"noremap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
"noremap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
"noremap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
"noremap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>
" don't change working directory
let g:ctrlp_working_path_mode = 0
" ignore these files and folders on file finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules)$',
  \ 'file': '\.pyc$\|\.pyo$',
  \ }

" show list of errors and warnings on the current file
noremap <leader>e :Errors<CR>
" check also when just opened the file
let g:syntastic_check_on_open = 1
" don't put icons on the sign column (it hides the vcs status icons of signify)
let g:syntastic_enable_signs = 0
" custom icons (enable them if you use a patched font, and enable the previous
" setting)
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'

"" Jedi-vim ------------------------------
"
"" All these mappings work only for python code:
"" Go to definition
"let g:jedi#goto_command = ',d'
"" Find ocurrences
"let g:jedi#usages_command = ',o'
"" Find assignments
"let g:jedi#goto_assignments_command = ',a'
"" Go to definition in new tab
"noremap ,D :tab split<CR>:call jedi#goto()<CR>

" NeoComplCache ------------------------------

" most of them not documented because I'm not sure how they work
" (docs aren't good, had to do a lot of trial and error to make
" it play nice)
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_ignore_case = 1
"let g:neocomplcache_enable_fuzzy_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_fuzzy_completion_start_length = 1
"let g:neocomplcache_auto_completion_start_length = 1
"let g:neocomplcache_manual_completion_start_length = 1
"let g:neocomplcache_min_keyword_length = 1
"let g:neocomplcache_same_filetype_lists = {}
"let g:neocomplcache_same_filetype_lists._ = '_'

" TabMan ------------------------------

" mappings to toggle display, and to focus on it
let g:tabman_toggle = 'tl'
let g:tabman_focus  = 'tf'

" Autoclose ------------------------------

" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

" DragVisuals ------------------------------

" mappings to move blocks in 4 directions
vmap <expr> <S-M-LEFT> DVB_Drag('left')
vmap <expr> <S-M-RIGHT> DVB_Drag('right')
vmap <expr> <S-M-DOWN> DVB_Drag('down')
vmap <expr> <S-M-UP> DVB_Drag('up')
" mapping to duplicate block
vmap <expr> D DVB_Duplicate()

" Signify ------------------------------

" this first setting decides in which order try to guess your current vcs
" UPDATE it to reflect your preferences, it will speed up opening files
let g:signify_vcs_list = [ 'git', 'hg' ]
" mappings to jump to changed blocks
noremap <leader>sn <plug>(signify-next-hunk)
noremap <leader>sp <plug>(signify-prev-hunk)
" nicer colors
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

" Window Chooser ------------------------------

" mapping
noremap  -  <Plug>(choosewin)
" show big letters
let g:choosewin_overlay_enable = 1

" Airline ------------------------------

" ========================================================================================
" VIM-airline  plugin
" https://github.com/bling/vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

function! AirlineInit()
  let g:airline_section_a = airline#section#create(['mode'])
  let g:airline_section_c = airline#section#create(['%F'])
endfunction
autocmd VimEnter * call AirlineInit()

  let g:airline_theme_patch_func = 'AirlineThemePatch'
  function! AirlineThemePatch(palette)
    if g:airline_theme == 'badwolf'
      for colors in values(a:palette.inactive)
        let colors[3] = 245
      endfor
    endif
  endfunction
"let g:airline_powerline_fonts = 0
"let g:airline_theme = 'bubblegum'
"let g:airline#extensions#whitespace#enabled = 0

" ========================================================================================
" remap movement for wrapped lines being the same as for non-wrapped lines
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" ========================================================================================
" set middle of screen for new searches
nnoremap <silent>n nzz
nnoremap <silent>N Nzz
nnoremap <silent>* *zz
nnoremap <silent># #zz
nnoremap <silent>g* g*zz

" " ========================================================================================
" run command conriguration
let g:vim_run_command_map = {
  \'javascript': 'node',
  \'php': 'php',
  \'python': 'python',
  \'bash': 'bash',
  \}
":Run yourcommand - runs selected command
" '<,'>RunVisual - run commands from selected lines
""AutoRun - autorun commands from file on each save
" " ========================================================================================
" ctrlp configuration
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
" " ========================================================================================
" ctrlp configuration
noremap <leader><leader>l :CtrlPLocate<cr>
" " ========================================================================================
" visualmarks configuration
""vmap <unique> m <Plug>VisualMarksVisualMark
noremap <leader>< <Plug>VisualMarksGetVisualMark


" " ========================================================================================
" set mutt-based variables
"setlocal fo+=aw
" " ========================================================================================
" Make 0 go to the first character rather than the beginning
" of the line. When we're programming, we're almost always
" interested in working with text rather than empty space. If
" you want the traditional beginning of line, use ^
nnoremap 0 ^
nnoremap ^ 0

" " ========================================================================================
 ," Surround a word with "quotes"
noremap <leader>" ysiw"
vmap <leader>" c"<C-R>""<ESC>

" <leader>' Surround a word with 'single quotes'
nnoremap <leader>' ysiw'
vmap <leader>' c'<C-R>"'<ESC>
" <leader>) or ,( Surround a word with (parens)
" The difference is in whether a space is put in
nnoremap <leader>( ysiw(
nnoremap <leader>) ysiw)
vmap <leader>( c( <C-R>" )<ESC>
vmap <leader>) c(<C-R>")<ESC>

" <leader>[ Surround a word with [brackets]
nnoremap <leader>] ysiw]
nnoremap <leader>[ ysiw[
vmap <leader>[ c[ <C-R>" ]<ESC>
vmap <leader>] c[<C-R>"]<ESC>

" <leader>{ Surround a word with {braces}
nnoremap <leader>} ysiw}
nnoremap <leader>{ ysiw{
vmap <leader>} c{ <C-R>" }<ESC>
vmap <leader>{ c{<C-R>"}<ESC>

nnoremap <leader>` ysiw`

" " ========================================================================================
"Clear current search highlight by double tapping //
noremap <silent> // :nohlsearch<CR>
" " ========================================================================================
" Change inside various enclosures with Alt-" and Alt-'
" The f makes it find the enclosure so you don't have
" to be standing inside it
"nnoremap <leader><leader>' f'ci'
"nnoremap <leader><leader>" f"ci"
"nnoremap <leader><leader>( f(ci(
"nnoremap <leader><leader>) f)ci)
"nnoremap <leader><leader>[ f[ci[
"nnoremap <leader><leader>] f]ci]
" " ========================================================================================
" assign q; to avoid shift pressing when searching last ex commands
noremap q; q:
vmap q; q:
" " ========================================================================================
" use ag as default grep tool if it is installed on the machine
if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor\ --ignore-case\ --column
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

map <leader>gr :grep <C-R><C-w><CR><CR><CR>
vmap <leader>gr :grep <C-R><C-w><CR><CR><CR>

" " ========================================================================================
" make vim working as tailf
function! Tailf()
    e
    normal G
    redraw

    sleep 1
    call Tailf()
endfunction

" ========================================================================================
" function allows going to selected jump from :jumps list
function! GotoJump()
  jumps
  let j = input("Please select your jump: ")
  if j != ''
    let pattern = '\v\c^\+'
    if j =~ pattern
      let j = substitute(j, pattern, '', 'g')
      execute "normal " . j . "\<c-i>"
    else
      execute "normal " . j . "\<c-o>"
    endif
  endif
endfunction

noremap <leader>j :call GotoJump()<cr>

" ========================================================================================
" add fzf plugin to runtimepath
""
set rtp+=~/.fzf

noremap <C-]> g<C-]>

" ========================================================================================
" Ansible settings
let g:ansible_unindent_after_newline = 1
let g:ansible_yamlKeyName = 'yamlKey'
let g:ansible_attribute_highlight = "ob"

highlight link sensibleWhitespaceError Error
autocmd Syntax * syntax match sensibleWhitespaceError excludenl /\s\+\%#\@<!$\| \+\ze\t/ display containedin=ALL

" Settings for conque-term
let g:ConqueTerm_PyVersion = 3
let g:ConqueTerm_SessionSupport = 0
let g:ConqueTerm_FastMode = 0
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_PromptRegex = '^\w\+@[0-9A-Za-z_.-]\+:[0-9A-Za-z_./\~,:-]\+\$'
let g:ConqueTerm_SendFileKey = '<F10>'
let g:ConqueTerm_ExecFileKey = '<F7>'
let g:ConqueTerm_TERM = 'xterm'


