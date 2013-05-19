set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle "thisivan/vim-bufexplorer"
Bundle "wincent/Command-T"
Bundle "davidhalter/jedi-vim"
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

filetype plugin indent on      " required!
