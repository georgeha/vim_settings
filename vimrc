" Plugins
" =============

"Setup Vundle For Package Management

"Vundle begins here, turn off filetype temporarily
filetype off
"Add vundle and any other packages not installed through vundle to our lookup
"path
set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=/usr/local/lib/node_modules/typescript-tools
call vundle#begin()
    Plugin 'gmarik/vundle'

    " # Python autocompletion
    Plugin 'davidhalter/jedi-vim'

    " # Themes
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'chriskempson/base16-vim'

    " # Enhanced Syntax
    "Plugin 'othree/yajs.vim'
    "Plugin 'plasticboy/vim-markdown'
    "Plugin 'elzr/vim-json'

    " # Extra Syntax
    Plugin 'groenewege/vim-less'
    Plugin 'mustache/vim-mustache-handlebars'
    Plugin 'lepture/vim-jinja'
    Plugin 'dag/vim-fish'

    " Functionality

    " ### Indispensable

    " ctrlp is file fuzzy search
    Plugin 'kien/ctrlp.vim'
    " Ack.vim uses ack to search within files
    "Plugin 'mileszs/ack.vim'
    "Airline provides a stylish appearance for the styleline
    "Plugin 'bling/vim-airline'
    " Syntastic provides syntax info
    "Plugin 'scrooloose/syntastic'
    "Show git info in the gutter, sad that it and syntastic fight for space though
    "Plugin 'airblade/vim-gitgutter'
    "Integrate with tmux
    "Plugin 'christoomey/vim-tmux-navigator'
    "Provides Sublime-Text like smart completion of braces, parens and such
    "Plugin 'Raimondi/delimitMate'
    " Great helpful autocompletion (requires a separate compile step)
    "Plugin 'Valloric/YouCompleteMe'
    "Easy commenting in Vim
    Plugin 'tpope/vim-commentary'

    " ### Use sometimes

    "Nerdtree provides a file explorer, which is sometimes useful. Mostly ctrlp handles file finding though
    "Plugin 'scrooloose/nerdtree'
    " fugitive provides git bindings in Vim.  Don't use too much, but useful for blame
    Plugin 'tpope/vim-fugitive'
    " Surround is useful for adding surrounding tags to elements (especially html and quotes)
    Plugin 'tpope/vim-surround'
    " Allows vim-surround to be used with . command
    Plugin 'tpope/vim-repeat'
    "Adds convenience stuff for writers
    "Plugin 'reedes/vim-pencil'
    "Provide snippets functionality in Vim
    Plugin 'SirVer/ultisnips'
    "Standardize whitespace
    Plugin 'editorconfig/editorconfig-vim'
    "Gives smart completions for Javascript
    "Plugin 'marijnh/tern_for_vim'
    "Shortcut for switching buffers and other stuff
    Plugin 'tpope/vim-unimpaired'


    "End Vundle
    call vundle#end()
    " "Vundle ended so reenable filetypes
    filetype plugin indent on
    " "Pull in matchit.vim, which is already bundled with Vim
    "runtime! macros/matchit.vim

" Appearance
" ===========

syntax on
set showmatch
set cursorline


" Indentation and Display
" =======================

set cindent "  stricter rules for c programs
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4    " set tabs to have 4 spaces 
set expandtab   " expand tab to spaces 

set list listchars=tab:\ \ ,trail:·   " Display tabs and trailing spaces visually
set nowrap                            " Don't wrap lines



" Completion
" ==========

"set wildmode=list:longest
set wildmode=longest,list,full
set wildmenu                    " Enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~     " Stuff to ignore when tab completing
set wildignore+=*vim/backups*



" Sanity Config (Don't edit text like an animal)
" ==============================================

set nocompatible                " Use vim rather than vi settings
set encoding=utf-8              " standard encoding
set number                      " Its nice to see line numbers
set backspace=indent,eol,start  " Allow backspace in insert mode
set autoread                    " Reload files changed outside vim
set hidden                      " Buffers can exist in the background
set history=1000                " Store lots of :cmdline history (its not 1990)



" Search Settings
" ===============

set incsearch        " Find the next match as we type the search
set hlsearch         " Highlight searches by default
set viminfo='100,f1  " Save up to 100 marks, enable capital marks

" Turn Off Swap Files
" " ===================
"
set noswapfile
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" Key maps
" ========

" Clear search highlights on hitting ESC twice
nnoremap <esc><esc> :noh<return> 

