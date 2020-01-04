" ==============================================================================
" PATCH'S VIMRC FILE
" ==============================================================================


" ==============================================================================
" EDITOR STYLISATION
"
" Visual settings to improve the Vim experience.
" ==============================================================================

set wrap linebreak           " Lines break on window border
set relativenumber nu        " Show relative and current number lines
set termguicolors
colorscheme horizon		     " Colour pallette
set t_ut=""                  " Constantly redraw vim to keep background colour
set cc=81                    " Vertical bar which you shall not pass
set tabstop=3                " Hard tabs represent 3 spaces
syntax on                    " Highlight my text, thanks! 

set nocompatible              " be iMproved, required
filetype off                  " required

" ==============================================================================
" CUSTOM KEY MAPPINGS
"
" Maps key combinations to complex commands for ease of use
" ==============================================================================

" Move through window splits (sp/vsp)
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" ==============================================================================
" PLUGINS AND OTHER THINGS RELATED
"
" Like keybindings and stuff
" ==============================================================================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Airline
Plugin 'vim-airline/vim-airline'

" Airline themes
Plugin 'vim-airline/vim-airline-themes'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_theme='deus'

" ALE (Asynchronous Lint Engine)
Plugin 'w0rp/ale'

" Fugitive
Plugin 'tpope/vim-fugitive'

" Horizon colours
Plugin 'ntk148v/vim-horizon'

" Markdown syntax
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1

" NERDTree
Plugin 'scrooloose/nerdtree'
" Launch with Ctrl-n
map <C-n> :NERDTreeToggle<CR>
" Close vim when the only window open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Git integration in NERDTree
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Surround
Plugin 'tpope/vim-surround'

" Limelight
Plugin 'junegunn/limelight.vim'

" Goyo
Plugin 'junegunn/goyo.vim'
" Launch with Ctrl-g
map <C-g> :Goyo<CR>

" Tagbar
Plugin 'majutsushi/tagbar'
" Launch with F8
execute "set <F8>=\e[19~"
map <F8> :Tagbar<CR>

" Twig extension
Plugin 'lumiliet/vim-twig'

" YouCompleteMe, code completion
Plugin 'ycm-core/YouCompleteMe'

" Vim markdown table of contents
Plugin 'mzlogin/vim-markdown-toc'

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



