set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle "thisivan/vim-bufexplorer"
Bundle "wincent/Command-T"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/syntastic"
Bundle "kien/rainbow_parentheses.vim"
Bundle "ervandew/screen"
Bundle "tpope/vim-fugitive"
Bundle "vim-scripts/LaTeX-Suite-aka-Vim-LaTeX"
Bundle "vim-scripts/slimv.vim"
Bundle "chriskempson/tomorrow-theme"
Bundle "sjl/vim-sparkup"
Bundle "tpope/vim-surround"
Bundle "vim-scripts/UltiSnips"
Bundle "Valloric/YouCompleteMe"
Bundle "Rykka/riv.vim"
Bundle "jelera/vim-javascript-syntax"
Bundle "pangloss/vim-javascript"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "marijnh/tern_for_vim"

filetype plugin indent on      " required!

" Install configured bundles:
" ---------------------------
" Launch vim, run :BundleInstall (or vim +BundleInstall +qall for CLI lovers)

