" setup vim-plug

" install vim-plug if not present
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

  
call plug#begin()

" My plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()

syntax on
set nu
set ruler

" faster update time for vim-gutter
set updatetime=100

" never lost a yanked text again :)
set clipboard=unnamed

" disable folding markdown
let g:vim_markdown_folding_disabled = 1

let g:airline_powerline_fonts = 1
let g:airline_theme = 'jellybeans'
