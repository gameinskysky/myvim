""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Import external source
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"source $VIM/vim70/mswin.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"LC Plugin
Plugin 'Taglist.vim'
Plugin 'Taglist-plus'
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
"
"""""""
set nocompatible " get out of horrible vi-compatible mode
filetype on " detect the type of file
set history=100 " How many lines of history to remember
"set ffs=unix,dos,mac " support all three, in this order
filetype plugin indent on " load filetype plugins
set viminfo+=! " make sure it can save viminfo
set isk+=_,$,@,%,#,- " none of these should be word dividers, so make them not be
"set helplang=cn " chinese help
set ic "ignore case

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark " we are using a dark background
syntax on " syntax highlighting on
if has("gui_running")
    "colorscheme koehler "desert
    colorscheme delek "desert
else
    colorscheme evening
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup " make backup file
set autowrite  " auto writefile when sth happened such as :make or :last or others.See the help
set makeef=error.err " When using make, where should it dump the file

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu " turn on wild menu
set ruler " Always show current positions along the bottom 
set cmdheight=1 " the command bar is 1 high
set number " turn on line numbers
"set numberwidth=4 " minimum width to use for the number column,not a fix size
set hid " you can change buffer without saving
set backspace=2 " make backspace work normal
set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to
"set mouse=a " use mouse everywhere
set shortmess=atI " shortens messages to avoid 'press a key' prompt 
set report=0 " tell us when anything is changed via :...
set lz " do not redraw while running macros (much faster) (LazyRedraw)
" make the splitters between windows be blank
set fillchars=vert:\ ,stl:\ ,stlnc:\
"set lsp=0 " space it out a little more (easier to read)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch " show matching brackets
set hlsearch " do highlight searched for phrases
set incsearch " BUT do highlight as you type you search phrase
" set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " what to show when I hit :set list
set so=3 " Keep 10 lines (top/bottom) for scope
set novisualbell " don't blink
set noerrorbells " no noises for error
set vb t_vb=     " no noises for other
set laststatus=2 " always show the status line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File encode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set encoding=utf-8
"set fileencoding=chinese
"set fileencodings=ucs-bom,utf-8,chinese

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set formatoptions+=mM " for charactors fold and patch
set ai " autoindent
set si " smartindent 
set cindent " do c-style indenting
set tabstop=4 " tab spacing (settings below are just to unify it)
set softtabstop=4 " unify
set shiftwidth=4 " unify 
set smarttab " use tabs at the start of a line, spaces elsewhere
set expandtab " 4 space instead of tab
%retab "change all tab to space
set nowrap " do not wrap lines  
set dictionary=/usr/share/dict/american-english "use dictionary when input the english word

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
" Enable folding, but by default make it act like folding is off, because folding is annoying in anything but a few rare cases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set foldenable " Turn on folding
"set foldlevel=100 " Don't autofold anything (but I can still fold manually)
"set foldopen-=search " don't open folds when you search into them
"set foldopen-=undo " don't open folds when you undo stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Win Manager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:winManagerWidth=35 " How wide should it be( pixels)
"let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer' " What windows should it
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Minibuf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines)
let g:miniBufExplModSelTarget = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matchit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:match_ignorecase = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" au BufEnter /usr/include/c++/*   setf cpp " all the file under the directory are recognized as cpp files by vim
au bufwinenter *.c,*.cpp silent loadview " autoload the file's last view
au bufwinleave *.c,*.cpp mkview " autosave the file's current view
"au BufWritePost *.c,*.cpp,*.cc,*.h !ctags-exuberant * -R
au BufWritePost *.c,*.cpp,*.cc,*.h !ctags * -R

au filetype c,cpp,verilog map <F3>    ^i//<ESC>                 " insert remark flag ,for c/c++/verilog
au filetype c,cpp,verilog map <F4>    :s?\/\/??^M:nohl^M  " delete remark flag ,for c/c++/verilog
au fileType c,cpp,verilog set expandtab                         " use space instead of tab in editing code
"au filetype * map <F3>     ^i#<ESC>                            " insert remark flag ,for default,bash script most
"au filetype * map <F4>     :s?#??^M:nohl^M                       " delete remark flag ,for default,bash script most
au BufRead,BufNewFile  *vimrc*,*.vim map <F3>    ^i"<ESC>         " insert remark flag ,for vim script
au BufRead,BufNewFile  *vimrc*,*.vim map <F4>    :s?"??^M:nohl^M  " delete remark flag ,for vim script

" vim -b : edit binary using xxd-format!
augroup Binary
        au!
        au BufReadPre  *.bin let &bin=1
        au BufReadPost *.bin if &bin | %!xxd
        au BufReadPost *.bin set ft=xxd | endif
        au BufWritePre *.bin if &bin | %!xxd -r
        au BufWritePre *.bin endif
        au BufWritePost *.bin if &bin | %!xxd
        au BufWritePost *.bin set nomod | endif
augroup END
" au BufRead,BufNewFile *.sv		set filetype=systemverilog           "add .sv file as verilog
" au BufRead,BufNewFile *.svc		set filetype=systemverilog           "add .svc file as verilog
" if there are any error space(the end of line or before the tabs) in c/c++ code,highlight it
"if $VIM_HATE_SPACE_ERRORS != '0'
"let c_space_errors=1
"endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful abbrevs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"iab xasp <%@language=jscript%><CR><%<CR><TAB><CR><BS>%><ESC><<O<TAB>
"iab xdate <C-R>=strftime("%d/%m/%y %H:%M:%S")<cr>
"=strftime("%d/%m/%y %H:%M:%S")
"=strftime("%d/%m/%y %H:%M:%S")
map ;date !!date<CR> 
"map ;date !!date<CR> 
map xdate a date:<C-R>=strftime("%d/%m/%y %H:%M:%S")<cr>
"inoremap <expr> 'dt strftime("%d/%m/%y %H:%M:%S")
"map <expr> ;date strftime("%d/%m/%y %H:%M:%S")
"map <expr> date <c-r>=strftime("%d/%m/%y %H:%M:%S")
"inoremap <expr> 'date CurTime()
:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>


function CurTime()
    let ftime=""
    let ftime=ftime." ".strftime("%b,%d %y %H:%M:%S")
    return ftime
endf 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

if has("win32")
    set guifont=Courier\ New:h14:cANSI
elseif has("cygwin")
    set guifont=Courier\ New:h14:cANSI
else
    set guifont=Courier\ 14
    "set guifont=Courier\ New\ 10\ Pitch\ 15
end
set ruler


"""""""""""""
let counter = 0
inoremap <expr> <C-L> ListItem()
inoremap <expr> <C-R> ListReset()

func ListItem()
  let g:counter += 1
  return g:counter . ' '
endfunc

func ListReset()
  let g:counter = 0
  return ''
endfunc
".strftime("%Y-%m-%d %H:%M")
"
" if has("win32")
"     source $HOME\vimfiles\verilog.txt
" else
" "    source $HOME/cygwin_vimfiles/verilog.txt
"     source $HOME\.vim\verilog.txt
" endif


:inoremap    'aln  <ESC>:Allpn<CR>
map          'aln  :Allpn<CR>
:inoremap    'alc  <ESC>:Allcom<CR>
map          'alc  :Allcom<CR>
:inoremap    'head  <ESC>:Aheader<CR>
map          'head  :Aheader<CR>
:inoremap    'fun  <ESC>:Acontent<CR>
map          'fun  :Acontent<CR>

command Adt :call CurTime()
:inoremap <expr> 'dt <ESC>:Adt<CR>
map 'dt :Adt<CR>

":inoremap <expr> 'dt strftime("%d/%m/%y %H:%M:%S")
"map <expr> 'dt strftime("%d/%m/%y %H:%M:%S")


set spell

set wrap
" autocmd BufReadPost * if line("'\"") && line("'\"") <= line("$") | exe "normal`\"" | endif
"

"Toggle Menu and Toolbar
"set guioptions-=m

"set guioptions-=T


" map <silent> <F2> :if &guioptions =~# 'T' <Bar>
"         \set guioptions-=T <Bar>
"         \set guioptions-=m <bar>
"     \else <Bar>
"         \set guioptions+=T <Bar>
"         \set guioptions+=m <Bar>
"     \endif<CR>
"set guioptions-=T
