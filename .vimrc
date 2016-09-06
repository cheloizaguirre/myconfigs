" Vim needs a POSIX-Compliant shell. Fish is not.
if $SHELL=~'bin/fish'
set shell=/bin/bash
endif
"Vundle setup
set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin('~/.vim/plugged')
Plug 'gmarik/vundle'

Plug 'Lokaltog/vim-easymotion'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
"Plug 'TwitVim'
Plug 'Yggdroot/indentLine'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'chriskempson/base16-vim'
Plug 'inside/vim-search-pulse'
"Plug 'klen/python-mode'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'nosami/Omnisharp'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'shinokada/dragvisuals.vim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'delimitMate.vim'
Plug 'sjl/gundo.vim'
Plug 'Shougo/unite-outline'
Plug 'Shougo/vimproc.vim'
Plug 'tsukkee/unite-help'
Plug 'ujihisa/unite-locate'
Plug 'thinca/vim-unite-history'
Plug 'osyo-manga/unite-filetype'
Plug 'osyo-manga/unite-quickfix'
Plug 'osyo-manga/unite-fold'
Plug 'tacroe/unite-mark'
Plug 'Shougo/junkfile.vim'
Plug 'majkinetor/unite-cmdmatch'
Plug 'kana/vim-textobj-entire' 
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-lastpat' 
Plug 'kana/vim-textobj-line' 
Plug 'kana/vim-textobj-underscore' 
Plug 'kana/vim-textobj-user'
Plug 'jaxbot/semantic-highlight.vim'
call plug#end()
"Done with Vundle

"set rtp+=~/.vim/bundle/powerline/bindings/vim
let mapleader = ","
let maplocalleader= ' '

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
set smarttab " guess tabs vs spaces based on whether we're at the beggining of a line
set expandtab " spaces, not tabs
set wildmenu " show list instead of just completing
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.
set wildignore+=*.sw?
"set wildignore+=*.bak, *.?~,*.??~,(.???~,*.~
set whichwrap=b,s,h,l,<,>,[,] " backspace and cursor keys wrap to
set scrolljump=5 " lines to scroll when cursor leaves screen
set scrolloff=8 " minimum lines to keep above and below cursor
set foldenable " auto fold code

set autoindent " indent at the same level of the previous line
set shiftwidth=4 " use indents of 4 spaces
set tabstop=4 " an indentation every four columns
set softtabstop=4 " let backspace delete indent
set scrolloff=10 "number of lines to keep above/below cursor
"set matchpairs+=<:> " match, to be used with %
set pastetoggle=<F12> " pastetoggle (sane indentation on pastes)
set colorcolumn=81
"set comments=sl:/*,mb:*,elx:*/ " auto format comment blocks
set listchars=eol:$,tab:\┆\ ,trail:~,extends:>,precedes:<
set cursorline
set ttyfast
set title
set showcmd
set hidden
set lazyredraw
"set timeoutlen=0
set backup
set noswapfile
set backupdir=$HOME/.vim/tmp/backup/
set undodir=$HOME/.vim/tmp/undo/
"set directory=$HOME/.vim/tmp/swap/
"set viminfo+=n$HOME/.vim/tmp/viminfo

filetype plugin indent on

nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h


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
"let g:unite_source_history_yank_enable = 1
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
"nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec<cr>
"nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
"nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
"nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
"nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
"
"" Custom mappings for the unite buffer
"autocmd FileType unite call s:unite_settings()
"function! s:unite_settings()
"	" Play nice with supertab
"	let b:SuperTabDisabled=1
"	" Enable navigation with control-j and control-k in insert mode
"	imap <buffer> <C-j>   <Plug>(unite_select_next_line)
"	imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
"endfunction

"===NERDTree settings
let NERDTreeWinPos="right"
let NERDTreeShowBookmarks=1
"nnoremap <leader>b :NERDTreeToggle<CR>

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
let NERDTreeHijackNetrw = 1

"===indenLine settings
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239

"===Pulseline config
let g:vim_search_pulse_mode = 'pattern'
let g:vim_search_pulse_duration = 400

"====[ Swap v and CTRL-V, because Block mode is more useful that Visual mode "]======

nnoremap    v   <C-V>
noremap <C-V>     v

noremap    v   <C-V>
noremap <C-V>     v
vmap  <expr>  <LEFT>   DVB_Drag('left')                     
vmap  <expr>  <RIGHT>  DVB_Drag('right')                    
vmap  <expr>  <DOWN>   DVB_Drag('down')                     
vmap  <expr>  <UP>     DVB_Drag('up')                       
vmap  <expr>  D        DVB_Duplicate()                      

" Remove any introduced trailing whitespace after moving... 
let g:DVB_TrimWS = 1 

"=== Configs based on github.com/joedicastro's awesome use of Unite
function! MakeDirIfNoExists(path)
	if !isdirectory(expand(a:path))
		call mkdir(expand(a:path), "p")
	endif
endfunction
silent! call MakeDirIfNoExists(&undodir)
silent! call MakeDirIfNoExists(&backupdir)
silent! call MakeDirIfNoExists(&directory)

nnoremap <Leader>k <C-w>c
" Toggle line numbers {{{

nnoremap <silent><Leader>l :call ToggleRelativeAbsoluteNumber()<CR>
function! ToggleRelativeAbsoluteNumber()
  if !&number && !&relativenumber
      set number
      set norelativenumber
  elseif &number && !&relativenumber
      set nonumber
      set relativenumber
  elseif !&number && &relativenumber
      set number
      set relativenumber
  elseif &number && &relativenumber
      set nonumber
      set norelativenumber
  endif
endfunction

" }}}

map <Leader>y "*y
map <Leader>p "*p
autocmd BufWritePost vimrc source %
" Spelling {{{

" turn on the spell checking and set the Spanish language
nmap <Leader>ss :setlocal spell spelllang=es<CR>
" turn on the spell checking and set the English language
nmap <Leader>se :setlocal spell spelllang=en<CR>
" turn off the spell checking
nmap <Leader>so :setlocal nospell <CR>
" jump to the next bad spell word
nmap <Leader>sn ]s
" suggest words
" nmap <Leader>sp z=
nmap <Leader>sp :Unite spell_suggest<CR>
" jump to the next bad spell word and suggests a correct one
" nmap <Leader>sc ]sz=
nmap <Leader>sc ]s :Unite spell_suggest<CR>
" add word to the dictionary
nmap <Leader>sa zg
" }}}

nnoremap <Leader>u :GundoToggle<CR>

"Unite basic mappings
" files
nnoremap <silent><Leader>o :Unite -silent -start-insert file<CR>
nnoremap <silent><Leader>O :Unite -silent -start-insert file_rec/async<CR>
nnoremap <silent><Leader>m :Unite -silent file_mru<CR>
" buffers
nnoremap <silent><Leader>b :Unite -silent buffer<CR>
" tabs
nnoremap <silent><Leader>B :Unite -silent tab<CR>
" buffer search
nnoremap <silent><Leader>f :Unite -silent -no-split -start-insert -auto-preview
			\ line<CR>
nnoremap <silent>[menu]8 :UniteWithCursorWord -silent -no-split -auto-preview
			\ line<CR>
" yankring
nnoremap <silent><Leader>i :Unite -silent history/yank<CR>
" grep
nnoremap <silent><Leader>a :Unite -silent -no-quit grep<CR>
" help
nnoremap <silent> g<C-h> :UniteWithCursorWord -silent help<CR>
" tasks
nnoremap <silent><Leader>; :Unite -silent -toggle
			\ grep:%::FIXME\|TODO\|NOTE\|XXX\|COMBAK\|@todo<CR>
" outlines (also ctags)
nnoremap <silent><Leader>t :Unite -silent -vertical -winwidth=40
			\ -direction=topleft -toggle outline<CR>
" junk files
nnoremap <silent><Leader>d :Unite -silent junkfile/new junkfile<CR>
"menu stuff <<<
let g:unite_source_menu_menus = {}
nnoremap [menu] <Nop>
nmap <LocalLeader> [menu]

nnoremap <silent>[menu]u :Unite -silent -winheight=20 menu<CR>
let g:unite_source_menu_menus.files = {
			\ 'description' : ' files & dirs
			\ ⌘ [space]o',
			\}
let g:unite_source_menu_menus.files.command_candidates = [
			\['▷ open file ⌘ ,o',
			\'Unite -start-insert file'],
			\['▷ open more recently used files ⌘ ,m',
			\'Unite file_mru'],
			\['▷ open file with recursive search ⌘ ,O',
			\'Unite -start-insert file_rec/async'],
			\['▷ edit new file',
			\'Unite file/new'],
			\['▷ search directory',
			\'Unite directory'],
			\['▷ search recently used directories',
			\'Unite directory_mru'],
			\['▷ search directory with recursive search',
			\'Unite directory_rec/async'],
			\['▷ make new directory',
			\'Unite directory/new'],
			\['▷ change working directory',
			\'Unite -default-action=lcd directory'],
			\['▷ know current working directory',
			\'Unite output:pwd'],
			\['▷ junk files ⌘ ,d',
			\'Unite junkfile/new junkfile'],
			\['▷ save as root ⌘ :w!!',
			\'exe "write !sudo tee % >/dev/null"'],
			\['▷ quick save ⌘ ,w',
			\'normal ,w'],
			\]
nnoremap <silent>[menu]o :Unite -silent -winheight=17 -start-insert
			\ menu:files<CR>
" file searching menu {{{
let g:unite_source_menu_menus.grep = {
    \ 'description' : ' search files
        \ ⌘ [space]a',
    \}
let g:unite_source_menu_menus.grep.command_candidates = [
    \['▷ grep (ag → ack → grep) ⌘ ,a',
        \'Unite -no-quit grep'],
    \['▷ find',
        \'Unite find'],
    \['▷ locate',
        \'Unite -start-insert locate'],
    \['▷ vimgrep (very slow)',
        \'Unite vimgrep'],
    \]
nnoremap <silent>[menu]a :Unite -silent menu:grep<CR>
" }}}

" buffers, tabs & windows menu {{{
let g:unite_source_menu_menus.navigation = {
    \ 'description' : ' navigate by buffers, tabs & windows
        \ ⌘ [space]b',
    \}
let g:unite_source_menu_menus.navigation.command_candidates = [
    \['▷ buffers ⌘ ,b',
        \'Unite buffer'],
    \['▷ tabs ⌘ ,B',
        \'Unite tab'],
    \['▷ windows',
        \'Unite window'],
    \['▷ location list',
        \'Unite location_list'],
    \['▷ quickfix',
        \'Unite quickfix'],
    \['▷ resize windows ⌘ C-C C-W',
        \'WinResizerStartResize'],
    \['▷ new vertical window ⌘ ,v',
        \'vsplit'],
    \['▷ new horizontal window ⌘ ,h',
        \'split'],
    \['▷ close current window ⌘ ,k',
        \'close'],
    \['▷ toggle quickfix window ⌘ ,q',
        \'normal ,q'],
    \['▷ zoom ⌘ ,z',
        \'ZoomWinTabToggle'],
    \['▷ delete buffer ⌘ ,K',
        \'bd'],
    \]
nnoremap <silent>[menu]b :Unite -silent menu:navigation<CR>
" }}}

" buffer internal searching menu {{{
let g:unite_source_menu_menus.searching = {
    \ 'description' : ' searchs inside the current buffer
        \ ⌘ [space]f',
    \}
let g:unite_source_menu_menus.searching.command_candidates = [
    \['▷ search line ⌘ ,f',
        \'Unite -auto-preview -start-insert line'],
    \['▷ search word under the cursor ⌘ [space]8',
        \'UniteWithCursorWord -no-split -auto-preview line'],
    \['▷ search outlines & tags (ctags) ⌘ ,t',
        \'Unite -vertical -winwidth=40 -direction=topleft -toggle outline'],
    \['▷ search marks',
        \'Unite -auto-preview mark'],
    \['▷ search folds',
        \'Unite -vertical -winwidth=30 -auto-highlight fold'],
    \['▷ search changes',
        \'Unite change'],
    \['▷ search jumps',
        \'Unite jump'],
    \['▷ search undos',
        \'Unite undo'],
    \['▷ search tasks ⌘ ,;',
        \'Unite -toggle grep:%::FIXME|TODO|NOTE|XXX|COMBAK|@todo'],
    \]
nnoremap <silent>[menu]f :Unite -silent menu:searching<CR>
" }}}

" yanks, registers & history menu {{{
let g:unite_source_menu_menus.registers = {
    \ 'description' : ' yanks, registers & history
        \ ⌘ [space]i',
    \}
let g:unite_source_menu_menus.registers.command_candidates = [
    \['▷ yanks ⌘ ,i',
        \'Unite history/yank'],
    \['▷ commands (history) ⌘ q:',
        \'Unite history/command'],
    \['▷ searches (history) ⌘ q/',
        \'Unite history/search'],
    \['▷ registers',
        \'Unite register'],
    \['▷ messages',
        \'Unite output:messages'],
    \['▷ undo tree (gundo) ⌘ ,u',
        \'GundoToggle'],
    \]
nnoremap <silent>[menu]i :Unite -silent menu:registers<CR>
" }}}

" spelling menu {{{
let g:unite_source_menu_menus.spelling = {
    \ 'description' : ' spell checking
        \ ⌘ [space]s',
    \}
let g:unite_source_menu_menus.spelling.command_candidates = [
    \['▷ spell checking in Spanish ⌘ ,ss',
        \'setlocal spell spelllang=es'],
    \['▷ spell checking in English ⌘ ,se',
        \'setlocal spell spelllang=en'],
    \['▷ turn off spell checking ⌘ ,so',
        \'setlocal nospell'],
    \['▷ jumps to next bad spell word and show suggestions ⌘ ,sc',
        \'normal ,sc'],
    \['▷ jumps to next bad spell word ⌘ ,sn',
        \'normal ,sn'],
    \['▷ suggestions ⌘ ,sp',
        \'normal ,sp'],
    \['▷ add word to dictionary ⌘ ,sa',
        \'normal ,sa'],
    \]
nnoremap <silent>[menu]s :Unite -silent menu:spelling<CR>
" }}}

" text edition menu {{{
let g:unite_source_menu_menus.text = {
    \ 'description' : ' text edition
        \ ⌘ [space]e',
    \}
let g:unite_source_menu_menus.text.command_candidates = [
    \['▷ toggle search results highlight ⌘ ,eq',
        \'set invhlsearch'],
    \['▷ toggle line numbers ⌘ ,l',
        \'call ToggleRelativeAbsoluteNumber()'],
    \['▷ toggle wrapping ⌘ ,ew',
        \'call ToggleWrap()'],
    \['▷ toggle auto-completion state (manual → disabled → auto) ⌘ ,ea',
        \'call ToggleNeoCompleteAutoSelect()'],
    \['▷ show hidden chars ⌘ ,eh',
        \'set list!'],
    \['▷ toggle fold ⌘ /',
        \'normal za'],
    \['▷ open all folds ⌘ zR',
        \'normal zR'],
    \['▷ close all folds ⌘ zM',
        \'normal zM'],
    \['▷ copy to the clipboard ⌘ ,y',
        \'normal ,y'],
    \['▷ paste from the clipboard ⌘ ,p',
        \'normal ,p'],
    \['▷ toggle paste mode ⌘ ,P',
        \'normal ,P'],
    \['▷ remove trailing whitespaces ⌘ ,et',
        \'normal ,et'],
    \['▷ text statistics ⌘ ,es',
        \'Unite output:normal\ ,es -no-cursor-line'],
    \['▷ show word frequency ⌘ ,ef',
        \'Unite output:WordFrequency'],
    \['▷ show available digraphs',
        \'digraphs'],
    \['▷ insert lorem ipsum text',
        \'exe "Loremipsum" input("numero de palabras: ")'],
    \['▷ show current char info ⌘ ga',
        \'normal ga'],
    \]
nnoremap <silent>[menu]e :Unite -silent -winheight=20 menu:text <CR>
" }}}

" bookmarks menu {{{
let g:unite_source_menu_menus.bookmarks = {
    \ 'description' : ' bookmarks
        \ ⌘ [space]m',
    \}
let g:unite_source_menu_menus.bookmarks.command_candidates = [
    \['▷ open bookmarks',
        \'Unite bookmark:*'],
    \['▷ add bookmark',
        \'UniteBookmarkAdd'],
    \]
nnoremap <silent>[menu]m :Unite -silent menu:bookmarks<CR>
" }}}

" Bundle menu {{{
let g:unite_source_menu_menus.bundle = {
    \ 'description' : ' bundle
        \ ⌘ [space]m',
    \}
let g:unite_source_menu_menus.bundle.command_candidates = [
    \['▷ update bundles',
        \'BundleUpdate'],
    \['▷ install bundles',
        \'BundleInstall'],
    \]

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_mru,file_rec,file_rec/async,grep,locate',
            \ 'ignore_pattern', join(['\.git/', 'tmp/', 'bundle/', 'Binaries/'], '\|'))

let g:unite_source_history_yank_enable = 1
let g:unite_enable_start_insert = 0
let g:unite_enable_short_source_mes = 0
let g:unite_force_overwrite_statusline = 0
let g:unite_prompt = '>>> '
let g:unite_marked_icon = '✓'
" let g:unite_candidate_icon = '∘'
let g:unite_winheight = 15
let g:unite_update_time = 200
let g:unite_split_rule = 'botright'
let g:unite_data_directory = $HOME.'/.vim/tmp/unite'
let g:unite_source_buffer_time_format = '(%d-%m-%Y %H:%M:%S) '
let g:unite_source_file_mru_time_format = '(%d-%m-%Y %H:%M:%S) '
let g:unite_source_directory_mru_time_format = '(%d-%m-%Y %H:%M:%S) '

if executable('ag')
    let g:unite_source_grep_command='ag'
    let g:unite_source_grep_default_opts='--nocolor --nogroup -a -S'
    let g:unite_source_grep_recursive_opt=''
    let g:unite_source_grep_search_word_highlight = 1
elseif executable('ack')
    let g:unite_source_grep_command='ack'
    let g:unite_source_grep_default_opts='--no-group --no-color'
    let g:unite_source_grep_recursive_opt=''
    let g:unite_source_grep_search_word_highlight = 1
endif

let g:junkfile#directory=expand($HOME."/.vim/tmp/junk")

inoremap <leader>fn <C-R>=expand("%:t:r")<CR>

