" Vim needs a POSIX-Compliant shell. Fish is not.
if $SHELL=~'bin/fish'
set shell=/bin/bash
endif
"Vundle setup
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'Shougo/unite.vim'
Bundle 'TwitVim'
Bundle 'Yggdroot/indentLine'
Bundle 'bling/vim-airline'
Bundle 'chriskempson/base16-vim'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'mhinz/vim-startify'
Bundle 'altercation/vim-colors-solarized'
"Done with Vundle

"set rtp+=~/.vim/bundle/powerline/bindings/vim

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

if $TERM == 'screen-256color'
	set t_Co=256
endif
set background=dark
colors solarized
set nu
set incsearch
syntax on
scriptencoding utf-8
set history=1000

if has('cmdline_info')
set ruler " show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
set showcmd " show partial commands in status line and
" selected characters/lines in visual mode
endif

if has('statusline')
	set laststatus=2

" Broken down into easily includeable segments
set statusline=%<%f\ " Filename
set statusline+=%w%h%m%r " Options
" set statusline+=%{fugitive#statusline()} " Git Hotness
set statusline+=\ [%{&ff}/%Y] " filetype
set statusline+=\ [%{getcwd()}] " current dir
set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
endif

set backspace=indent,eol,start " backspace for dummys
set linespace=0 " No extra spaces between rows
set nu " Line numbers on
set showmatch " show matching brackets/parenthesis
set incsearch " find as you type search
set hlsearch " highlight search terms
set winminheight=0 " windows can be 0 line high
set ignorecase " case insensitive search
set smartcase " case sensitive when uc present
set wildmenu " show list instead of just completing
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,] " backspace and cursor keys wrap to
set scrolljump=5 " lines to scroll when cursor leaves screen
set scrolloff=3 " minimum lines to keep above and below cursor
set foldenable " auto fold code

set autoindent " indent at the same level of the previous line
set shiftwidth=4 " use indents of 4 spaces
set tabstop=4 " an indentation every four columns
set softtabstop=4 " let backspace delete indent
set scrolloff=10 "number of lines to keep above/below cursor
"set matchpairs+=<:> " match, to be used with %
set pastetoggle=<F12> " pastetoggle (sane indentation on pastes)
set colorcolumn=80
"set comments=sl:/*,mb:*,elx:*/ " auto format comment blocks
set listchars=eol:$,tab:\│\ ,trail:~,extends:>,precedes:<
set cursorline
filetype plugin indent on

nnoremap j gj
nnoremap k gk
nnoremap ^j ^w j

""" Code folding options
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>

nmap <silent> <leader>/ :nohlsearch<CR>

if has('gui_running')
set lines=80 " 40 lines of text instead of 24,
set columns=120
set guifont=Sauce\ Code\ Powerline\ 10
endif


" twitvim stuff
let twitvim_enable_python = 1
let twitvim_browser_cmd = 'firefox'

"vimchat stuff
let vimchat_libnotify = 0

" latexsuite plugin stuff
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

nnoremap ,gr :grep -Irin <C-r><C-w> *<CR>
nnoremap ,pe :!p4 edit %<CR>


"==Powerline settings
"let g:Powerline_symbols = 'fancy'

"==Airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 0
"===Unite
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
	" Play nice with supertab
	let b:SuperTabDisabled=1
	" Enable navigation with control-j and control-k in insert mode
	imap <buffer> <C-j>   <Plug>(unite_select_next_line)
	imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

"===NERDTree settings
let NERDTreeWinPos="right"
let NERDTreeShowBookmarks=1
nnoremap <leader>b :NERDTreeToggle<CR>

"===Startify settings 
let g:startify_custom_header = map(split(system('fortune -o| cowsay'), '\n'), '" ". v:val') + ['','', ' Vim is charityware. Please read ":help uganda".', '', '']
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
hi StartifyBracket ctermfg=240
hi StartifyFooter  ctermfg=111
hi StartifyHeader  ctermfg=203
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
autocmd VimEnter *
			\ if !argc() |
			\   Startify |
			\   NERDTree |
			\   execute "normal \<c-w>w" |
			\ endif
let NERDTreeHijackNetrw = 0

"===indenLine settings
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239
