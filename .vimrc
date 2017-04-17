" 关闭兼容模式
set nocompatible

set mouse+=a
set tags=tags;
set t_Co=256
"autocmd vimenter * Tlist
"autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
" set listchars=tab:\|\ 
" set list

let mapleader=','
let g:BASH_Ctrl_j = 'off'
"
let g:ycm_globalycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"shortcut map"
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
noremap <C-\> <C-w><C-g><C-]>
noremap <C-l> <C-w><C-l>
noremap <C-h> <C-w><C-h>
noremap <C-j> <C-w><C-j><CR>
noremap <C-k> <C-w><C-k>
noremap <C-i> <C-g><C-]>
noremap <leader>q :q<CR>
noremap <leader>w :w<CR>
noremap <leader>a :wqa <CR>
noremap <leader>h <C-w>H
noremap <leader>j <C-w>J
noremap <leader>k <C-w>K
noremap <leader>l <C-w>L
map <F5> :NERDTreeToggle<CR>
nnoremap <F7> :GundoToggle <CR>
imap  <C-o> <esc>o
"map <C-a> <leader>cs


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath+=~/.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'edkolev/promptline.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'c.vim'
Plugin 'cpp.vim'
"Plugin 'monojo/vim-basic'
Plugin 'OmniCppComplete'
Plugin 'coffee.vim'
Plugin 'cscope.vim'
Plugin 'pathogen.vim'
Plugin 'scrooloose/syntastic'
Plugin 'taglist.vim'
Plugin 'tpope/vim-repeat'
Plugin 'easymotion/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'Gundo'
Plugin 'scrooloose/nerdcommenter'
Plugin 'surround.vim'
Plugin 'Tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/NERDTree'
Plugin 'nathanaelkane/vim-indent-guides' 
Plugin 'morhetz/gruvbox'

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


execute pathogen#infect()


set fdm=syntax
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on
filetype on

set pastetoggle=<F2>

" Set to auto read when a file is changed from the outside
set autoread
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class
" change the terminal's title
set title

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hidden
" don't wrap lines
"set nowrap

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
"set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
syntax on

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
let &termencoding=&encoding
set fileencoding=utf-8
set fileencodings=utf-8,gbk

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set number

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
" copy the previous indentation on autoindenting
set copyindent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""
" => Tag list (ctags)
""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1
"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1
""如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Left_Window = 1         "在右侧窗口中显示taglist窗口 
"map <silent> <F6> :TlistToggle <cr>
"""""""""""""""""""""""""""""""
" Tag list (ctags) END
""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""
" => Gundo 
""""""""""""""""""""""""""""""""
let g:gundo_right=1

"""""""""""""""""""""""""""""""
" => Gundo  END
""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""
" => Tagbar (ctags) END
""""""""""""""""""""""""""""""""
nnoremap <silent> <F6> :TagbarToggle <cr>
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_show_visibility = 0
let g:tagbar_show_linenumbers = 1
let g:tagbar_sort = 0
let g:tagbar_autopreview = 0
"let g:tagbar_previewwin_pos = "botright"
let g:tagbar_foldlevel = 1
let g:tagbar_autoshowtag = 1
"""""""""""""""""""""""""""""""
" Tagbar (ctags) END
""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""
" => indent_guides 
""""""""""""""""""""""""""""""""
"set ts=2 sw=2 et
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red  ctermbg=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
noremap <leader>ig :IndentGuidesToggle <CR>
" hi IndentGuidesOdd  guibg=red   ctermbg=1
" hi IndentGuidesEven guibg=green ctermbg=4
" hi IndentGuidesOdd  ctermbg=black
" hi IndentGuidesEven ctermbg=darkgrey
"""""""""""""""""""""""""""""""
" indent_guides END
""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""
" => syntastic 
""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_checkers = "gcc"
let g:syntastic_enable_balloons = 1
let g:syntastic_warning_symbole = "\u26A0"
let g:syntastic_loc_list_height = 4

"""""""""""""""""""""""""""""""
" => syntastic  End
""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""
" => ycm
""""""""""""""""""""""""""""""""
let g:ycm_show_diagnostics_ui = 0
let g:ycm_register_as_syntastic_checker = 1 
let g:ycm_enable_diagnostic_highlighting = 0
"""""""""""""""""""""""""""""""
" => ycm  End
""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""
" => gitgutter  
""""""""""""""""""""""""""""""""
set updatetime=250
"""""""""""""""""""""""""""""""
" => gitgutter  End
""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""
" => ctrlp 
""""""""""""""""""""""""""""""""
" set g:ctrlp_working_path_mode= 'ra' 
"""""""""""""""""""""""""""""""
" => ctrlp End
""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""
" => nerdcommenter 
""""""""""""""""""""""""""""""""
let g:NERDSpaceDelims=1 "add one space 
let g:NERDCompactSexyComs=1
let g:NERDCustomDelimiters= { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines= 1
let g:NERDTrimTrailingWhitespace= 1
let g:NERDDefaultAlign = 'left'
"""""""""""""""""""""""""""""""
" => nerdcommenter End
""""""""""""""""""""""""""""""""

set background=dark
"colorscheme solarized
let g:solarized_termcolors=256
colorscheme solarized
"colorscheme gruvbox
"colorscheme default
"colorscheme desert
"colorscheme default

"""""""""""""""""""""""""""""""
" Tagbar (ctags) END
""""""""""""""""""""""""""""""""

set completeopt=longest,menu
set cscopequickfix=s-,c-,d-,i-,t-,e-
"command! W w !sudo tee % > /dev/null
" VIM 7.3+ has support for highlighting a specified column.
if exists('+colorcolumn')
    set colorcolumn=80
else
    " Emulate
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)
endif
" 去除行为空格
" autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType c,cpp,java,php,ruby autocmd BufWritePre <buffer> :%s/\s\+$//e
" ctags -R --fields=+lS .
" let g:EasyMotion_leader_key = 't'
nmap s <Plug>(easymotion-s)
" Gif config
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)


"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif
""""""""vim-airline""""""""
"make it work
set laststatus=2
"enable extention support
"let g:airline_enable_syntastic = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing' ]

let g:airline#extensions#tagbar#enabled = 1
"short leave insert mode
set ttimeoutlen=50

"bufferline
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 1
"make buuferline on status line
let g:bufferline_echo = 0
  autocmd VimEnter *
    \ let &statusline='%{bufferline#refresh_status()}'
      \ .bufferline#get_status_string()

"use powerline style fonts
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'lightline'
"let g:airline#extensions#tmuxline#enabled = 1
"let g:tmuxline_theme = 'zenburn'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
nmap <leader>1 1gt 
nmap <leader>2 2gt 
nmap <leader>3 3gt 
nmap <leader>4 4gt 
nmap <leader>5 5gt 
nmap <leader>6 6gt 
nmap <leader>7 7gt 
nmap <leader>8 8gt 
nmap <leader>9 9gt 
