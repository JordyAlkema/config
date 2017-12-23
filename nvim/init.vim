" Plugins {{{1

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/context_filetype.vim'
    Plug 'osyo-manga/vim-precious', { 'for': ['markdown', 'help'] }

" todo {{{2

" Plug 'LucHermitte/VimFold4C'

" Plug 'OmniSharp/omnisharp-vim'
" , { 'dir': '~/.local/share/nvim/plugged/omnisharp-vim/server', 'do': 'msbuild' }
" Plug 'tpope/vim-dispatch'

" Plug 'tpope/vim-sleuth'

Plug 'vheon/vim-cursormode'
Plug 'Shougo/echodoc.vim'

Plug 'rhysd/github-complete.vim'

" Plug 'junegunn/vim-slash'

" Plug 'Konfekt/FastFold'

Plug 'google/vim-searchindex'

" Plug 'suan/vim-instant-markdown'
" Plug 'jaxbot/browserlink.vim'

" Plug 'Shougo/neoinclude.vim'
" Plug 'Shougo/neco-syntax'

" Plug 'vim-scripts/EnhancedJumps'

" Plug 'jaxbot/github-issues.vim'
" Plug 'TKNGUE/github-issues.vim'

" Plug 'plasticboy/vim-markdown'

" Plug 'sentientmachine/erics_vim_syntax_and_color_highlighting'

" Plug 'sheerun/vim-polyglot'

" Plug 'esalter-va/vim-checklist'

" Plug 'j16180339887/Global.vim'


" closers {{{2

Plug 'tpope/vim-endwise'
Plug 'cjbassi/vim-closer'


" completion {{{2

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Rip-Rip/clang_complete'
    Plug 'zchee/deoplete-jedi'
    Plug 'racer-rust/vim-racer'
    Plug 'Shougo/neco-vim'


" editing {{{2

Plug 'matze/vim-move'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'


" folding {{{2

Plug 'nelstrom/vim-markdown-folding'
Plug 'matze/vim-ini-fold'

Plug 'benknoble/vim-auto-origami'

Plug 'tmhedberg/SimpylFold'


" formatting/linting {{{2

Plug 'w0rp/ale'

Plug 'Chiel92/vim-autoformat'

Plug 'Vimjas/vim-python-pep8-indent'

Plug 'editorconfig/editorconfig-vim'


" fzf {{{2

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'


" Git {{{2

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-rhubarb'


" language-server {{{2

Plug 'ternjs/tern_for_vim', { 'dir': '~/.local/share/nvim/plugged/tern_for_vim', 'do': 'npm install' }
Plug 'moll/vim-node'

Plug 'davidhalter/jedi-vim'


" Markdown {{{2

Plug 'shime/vim-livedown', { 'do': 'sudo npm install -g livedown' }

Plug 'dkarter/bullets.vim'


" motion {{{2

Plug 'terryma/vim-smooth-scroll'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-edgemotion'
Plug 'justinmk/vim-ipmotion'


" searching {{{2

" Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/vim-asterisk'
" Plug 'wincent/loupe'


" snippets {{{2

Plug 'sirver/ultisnips'
    Plug 'honza/vim-snippets'


" syntax {{{2

Plug 'kovetskiy/sxhkd-vim'

Plug 'othree/javascript-libraries-syntax.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'styled-components/vim-styled-components'

Plug 'hail2u/vim-css3-syntax'

Plug 'rhysd/vim-gfm-syntax'  " GitHub markdown

Plug 'PotatoesMaster/i3-vim-syntax'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'elzr/vim-json'

Plug 'cespare/vim-toml'

Plug 'rust-lang/rust.vim'

Plug 'ekalinin/Dockerfile.vim'


" textobjects {{{2

Plug 'kana/vim-textobj-user'
    Plug 'michaeljsmith/vim-indent-object'
    Plug 'coderifous/textobj-word-column.vim'
    Plug 'kana/vim-textobj-entire'
    Plug 'glts/vim-textobj-comment'
    Plug 'kana/vim-textobj-function'


" utilities {{{2

Plug 'farmergreg/vim-lastplace'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'tpope/vim-unimpaired'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mbbill/undotree'
Plug 'tpope/vim-eunuch'  " unix tools


" vim-airline {{{2

Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ntpeters/vim-airline-colornum'


" visuals {{{2

Plug 'tjdevries/overlength.vim'
Plug 'Yggdroot/indentLine'
Plug 'chrisbra/Colorizer'
Plug 'kshenoy/vim-signature'  " shows marks
Plug 'icymind/NeoSolarized'
Plug 'kana/vim-operator-user'
    Plug 'haya14busa/vim-operator-flashy'


" }}}

call plug#end()

autocmd BufNewFile,BufRead *.ts set filetype=javascript.jsx
if &encoding == "utf-8"
    set listchars=tab:│\ ,trail:⋅,nbsp:␣
else
    set listchars=tab:\|\ ,trail:.,nbsp:~
endif

" Visuals {{{1

syntax enable

let g:neosolarized_vertSplitBgTrans = 1
let g:neosolarized_italic = 0

set background=dark
set termguicolors
colorscheme NeoSolarized

set cursorline

hi javaScript ctermfg=244 guifg=244

" highlights shebang
autocmd FileType * syn match shebang "\%^#!.*$"
hi def link shebang PreProc

" hi LineNr guibg=NONE guifg=237
" hi Normal guibg=NONE
" hi StatusLine guibg=232 guifg=241

" hi Search guibg=peru guifg=wheat

" set t_Co=256
" let g:solarized_termcolors=256


" Keybinds {{{1

map Y y$
nnoremap <silent> gG G
nnoremap Q @q
nnoremap <silent> , :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

nnoremap H gT
nnoremap L gt

nmap <silent> j gj
nmap <silent> k gk

" backwards deleting in insert mode adds to undo list
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" keep selected text selected when fixing indentation
vnoremap < <gv
vnoremap > >gv

nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

" nnoremap <silent> <C-S-h> :wincmd H<CR>
" nnoremap <silent> <C-S-j> :wincmd J<CR>
" nnoremap <silent> <C-S-k> :wincmd K<CR>
" nnoremap <silent> <C-S-l> :wincmd L<CR>


" leader {{{2

map <Space> <Nop>
let mapleader=" "
set notimeout
set ttimeout

nnoremap <leader>/ /\C^\s*
noremap <leader>: :<C-f>i

nnoremap <leader>j i<CR><Esc>k$hl
nnoremap <leader>k J
nnoremap <leader>K Jx

nnoremap <silent> <leader>c :q<CR>

nnoremap <silent> <leader>S :SudoEdit<bar>nnoremap <buffer> <silent> <leader>w :SudoWrite<CR>

nnoremap <silent> <leader>tc :ChecklistToggleCheckbox<CR>
nnoremap <silent> <leader>tC :ColorToggle<CR>
nnoremap <silent> <leader>tf :Autoformat<CR>
nnoremap <leader>th :Help 
nnoremap <silent> <leader>tm :LivedownToggle<CR>
nnoremap <leader>tr :%s/
nnoremap <silent> <leader>tR :RangerCurrentFile<CR>
nnoremap <silent> <leader>ts :silent ! ws '%' &<CR>
nnoremap <silent> <leader>tu :UndotreeToggle<CR>
nnoremap <leader>tU :UltiSnipsEdit 
nnoremap <silent> <leader>tv :source ~/config/nvim/init.vim<CR>
nnoremap <silent> <leader>tw :set wrap!<CR>
nnoremap <silent> <leader>tx :Chmod +x<CR>


" nnoremap <silent> <leader>tr :vsplit <bar> RangerCurrentFile<CR>
" nnoremap <silent> <leader>tR :!! %<CR>
" nnoremap <silent> <leader>tW :StripWhitespace<CR>
" nnoremap <silent> <leader>tr :retab<CR>
" noremap <silent> <leader>tf :Autoformat<CR>
" nnoremap <silent> <leader>tC :silent ! ~/config/scripts/webserver.js '%' &<CR>
" nnoremap <silent> <leader>sw :SudoWrite<CR>


" buffers {{{3

nnoremap <silent> <leader>bx :w<CR>:Bclose<CR>
nnoremap <silent> <leader>bd :Bclose<CR>
nnoremap <silent> <leader>bD :Bclose!<CR>
nnoremap <silent> <leader>bf :FZF<CR>
nnoremap <silent> <leader>bF :FZF ~<CR>
nnoremap <silent> <leader>bn :enew<CR>
nnoremap <silent> <leader>br :edit<CR>
nnoremap <leader>bm :Rename 
nnoremap <leader>bM :Move 


" write/quit {{{3

nnoremap <silent> <leader>q :qa<CR>
nnoremap <silent> <leader>C :cq<CR>
nnoremap <silent> <leader>x :silent w<CR>:qa<CR>
nnoremap <silent> <leader>! :Bclose!<CR>:qa<CR>

nnoremap <silent> <leader>w :silent w<CR>
nnoremap <silent> <leader>W :silent wa<CR>


" editing {{{3

nnoremap <silent> <leader>o o
nnoremap <silent> <leader>O O

nnoremap <silent> <leader>d S<Esc>


" movement {{{3

map <silent> <leader>f <Plug>(easymotion-j)
map <silent> <leader>F <Plug>(easymotion-k)

nnoremap <silent> ' :Buffers<CR>
nnoremap <silent> <Tab> :b#<CR>

nnoremap <silent> <leader>l :Lines<CR>


" files {{{3

nnoremap <silent> <leader>ea1 :edit ~/config/arch/arch1.sh<CR>
nnoremap <silent> <leader>ea2 :edit ~/config/arch/arch2.sh<CR>
nnoremap <silent> <leader>ea3 :edit ~/config/arch/arch3.sh<CR>
nnoremap <silent> <leader>eal :edit ~/config/dotfiles/.aliases<CR>
nnoremap <silent> <leader>ee :edit ~/config/dotfiles/.editorconfig<CR>
nnoremap <silent> <leader>eg :edit ~/drive/notes/technology/programming_guide.md<CR>
nnoremap <silent> <leader>eh :edit ~/.histfile<CR>
nnoremap <silent> <leader>ek :edit ~/config/sxhkd/sxhkdrc<CR>
nnoremap <silent> <leader>em :edit ~/config/mutt/muttrc<CR>
nnoremap <silent> <leader>en :edit ~/config/dotfiles/.zshenv<CR>
nnoremap <silent> <leader>ep :edit ~/config/polybar/config<CR>
nnoremap <silent> <leader>er :edit ~/.config/ranger/rc.conf<CR>
nnoremap <silent> <leader>et :edit ~/config/alacritty/alacritty.yml<CR>
nnoremap <silent> <leader>ev :edit ~/config/nvim/init.vim<CR>
nnoremap <silent> <leader>ew :edit ~/config/bspwm/bspwmrc<CR>
nnoremap <silent> <leader>ex :edit ~/config/dotfiles/.xinitrc<CR>
nnoremap <silent> <leader>ez :edit ~/config/dotfiles/.zshrc<CR>

nnoremap <silent> <leader>eM :edit Makefile<CR>


" git {{{3

nnoremap <silent> <leader>gd :Gvdiff<CR>
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gbrowse<CR>
nnoremap <silent> <leader>gp :Gpush<CR>
nnoremap <leader>gm :Gmove 


" vim-plug {{{3

nnoremap <silent> <leader>pi :source ~/config/nvim/init.vim <bar> :nohlsearch<CR>:PlugInstall<CR>
nnoremap <silent> <leader>pu :source ~/config/nvim/init.vim <bar> :nohlsearch<CR>:PlugUpdate<CR>
nnoremap <silent> <leader>pc :source ~/config/nvim/init.vim <bar> :nohlsearch<CR>:PlugClean<CR>


" }}}

" unmaps {{{2

autocmd VimEnter * map # <Nop>
autocmd VimEnter * map ? <Nop>
autocmd VimEnter * map q: <Nop>
autocmd VimEnter * map <Enter> <Nop>
autocmd VimEnter * map <Backspace> <Nop>


" prevent yanking {{{2

nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C
nnoremap s "_s
vnoremap s "_s
nnoremap S "_S
vnoremap S "_S

nnoremap x "_x
vnoremap x "_x
nnoremap X "_X
vnoremap X "_X

" pasting over something doesn't yank it
xnoremap p pgvy


" o and O {{{2

nnoremap <silent> o o<Esc>

nnoremap <silent> O :<C-u>exe "normal! " . v:count . "O" \| :call O_fixer(v:count)<CR>
function! O_fixer(count)
    if a:count > 0
        :exe "normal! " . (a:count - 1) . "k"
    endif
endfunction


" centering screen {{{2

" noremap <silent> n nzz
" noremap <silent> N Nzz

" noremap g; g;zz
" noremap g, g,zz

noremap <silent> ; zz

" noremap za zazz
" noremap zc zczz
" noremap zo zozz
noremap zj zjzz
noremap zk zkzz
noremap zv zvzz
noremap zM zMzz
noremap zm zmzz

" noremap u uzz
" noremap

" }}}

" Settings {{{1

filetype plugin indent on

set encoding=utf-8

set mouse=a

" Completion window height
set pumheight=10

" set concealcursor = "nc"
" set conceallevel=0

" startup message, n and N, and file info on load
set shortmess=IsF

" movement commands don't move cursor to start of line
set nostartofline

set splitbelow
set splitright

" how many lines from end of screen to start scrolling
set scrolloff=1
set sidescrolloff=5

" for search and replace incrementally
set inccommand=nosplit

" Remove ESC delay in Vim
set timeoutlen=1000 ttimeoutlen=0

set noshowmode
set noshowcmd
set noruler

" Wraps lines on linebreak
set linebreak

set display+=lastline

" Delete comment character when joining commented lines"
set formatoptions+=j
set autoread
set tabpagemax=50
set history=1000
set hidden

set clipboard=unnamedplus

" Spell checking doesn't check capitalization
set spellcapcheck=

set sessionoptions-=options
set complete-=i
set nrformats-=octal

set nowrap

set iskeyword-=_
" set iskeyword="a-z" TODO

" autocmd FileType mail autocmd BufWritePre normal! gggqG
" \<C-o>\<C-o>"<CR>

autocmd FileType man call ManFileType()
function! ManFileType()
    :IndentLinesDisable

    setlocal nonumber
    setlocal norelativenumber

    " call matchdelete(4) TODO
endfunction


autocmd FileType mail set spell textwidth=0 wrap

" Disables comments on new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

autocmd VimResized,TabEnter * wincmd =


" diff {{{2

if &diff
    highlight! link DiffText MatchParen
endif

set diffopt+=vertical


" folding {{{2

set foldenable

set foldmethod=marker
autocmd FileType c,cpp,java,javascript setlocal foldmethod=syntax

set foldcolumn=2
set foldlevel=0
set foldnestmax=1

" autocmd InsertLeave,WinEnter * let &l:foldmethod=g:oldfoldmethod
" autocmd InsertEnter,WinLeave * let g:oldfoldmethod=&l:foldmethod | setlocal foldmethod=manual

" set foldclose=all
" set foldopen=all

" autocmd BufReadPost * normal zR

" noremap zk zczkza

nnoremap <silent> z] :<C-u>silent! normal! zc<CR>zjzozz
nnoremap <silent> z[ :<C-u>silent! normal! zc<CR>zkzo[zzz


" autocmd BufRead * normal zv;

" autocmd FileType * normal! zv
" autocmd BufReadPre,FileReadPre * normal! zv

" set foldtext=MyFoldText()
" function! MyFoldText()
"     let line = getline(v:foldstart)
"     let string = ''
"     for i in range(v:foldlevel, 5)
"         let string = string . '    '
"     " let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g') }}}
"     return string . line . ' '
" endfunction


" numberline {{{2

set number
set numberwidth=4


" indent {{{2

set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround


" searching {{{2

set incsearch
set ignorecase
set smartcase
set hlsearch
set nowrapscan


" wildmenu {{{2

set wildmode=longest:full,full
set wildmenu
set wildignore=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=tags
set wildignore+=*.tar.*


" cursor doesn't move on ESC {{{2

let CursorColumnI = 0 "the cursor column position in INSERT
autocmd InsertEnter * let CursorColumnI = col('.')
autocmd CursorMovedI * let CursorColumnI = col('.')
autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif


" swap, backup, and undo {{{2

set directory=~/.config/nvim/swap//
set backupdir=~/.config/nvim/backup//
set undodir=~/.config/nvim/undo//
set undofile


" fullscreen help {{{2
" Opens Help files as if any other file was opened with "e file"
" also works with completion like regular :help

" This works by opening a blank buffer and setting it's buffer type to 'help'. Now when you run 'help ...' the blank buffer will show the helpfile in fullscreen. The function then adds the buffer to the bufferlist so you can use :bn, :bp, etc.
function! FullScreenHelp(helpfile)
	enew
	set bt=help
	execute "help " . a:helpfile
	set buflisted
endfunction

" Open help files the same as you usually do with "help example" and they'll open in a new buffer similar to "e file"
command! -nargs=1 -complete=help Help call FullScreenHelp(<f-args>)
cabbrev help Help
cabbrev h Help

" }}}

" Plugin Settings {{{1

" ALE {{{2


autocmd FileType markdown let b:ale_enabled=0

let g:ale_linters = {
\   'cpp': ['clang'],
\}

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

let g:ale_set_loclist=1
let g:ale_set_quickfix=1

let g:ale_set_highlights=1


" Bullets.vim {{{2

let g:bullets_set_mappings = 0


" Deoplete{{{2

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 0
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>
let g:deoplete#auto_complete_start_length = 2
let g:deoplete#max_abbr_width = 50

autocmd VimEnter * inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function() abort
    return deoplete#close_popup() . "\<CR>"
endfunction

autocmd CompleteDone * silent! pclose!

if has("patch-7.4.314")
    set shortmess+=c
endif

call deoplete#custom#source('around', 'matchers', ['matcher_fuzzy',
            \ 'matcher_length'])

let g:clang_library_path='/usr/lib'
let g:deoplete#sources#jedi#show_docstring = 1

set completeopt-=preview


" fzf {{{2

imap <C-f> <plug>(fzf-complete-path)

let g:fzf_layout = { 'down': '40%' }
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit' }

function! s:fzf_statusline()
    highlight fzf1 guifg=normal guibg=#002b36
    highlight fzf2 guifg=normal guibg=#002b36
    setlocal statusline=%#fzf1#\ >\ %#fzf2#fzf
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

let g:fzf_colors =
\ { 'fg':      ['#839496'],
  \ 'bg':      ['#002b36'],
  \ 'hl':      ['#268bd2'],
  \ 'fg+':     ['#eee8d5'],
  \ 'bg+':     ['#073642'],
  \ 'hl+':     ['#268bd2'],
  \ 'info':    ['#b58900'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['#b58900'],
  \ 'pointer': ['#2aa198'],
  \ 'marker':  ['#2aa198'],
  \ 'spinner': ['#2aa198'],
  \ 'header':  ['#268bd2'] }


" set rtp+=/usr/bin/fzf
" set rtp+=~/.fzf
" let g:fzf_layout = { 'window': '10split enew' }


" incsearch.vim{{{2

" autocmd FileType * map / <Plug>(incsearch-stay)

" let g:incsearch#auto_nohlsearch = 1

" map n  <Plug>(incsearch-nohl-n)
" map N  <Plug>(incsearch-nohl-N)

" map <C-j> <Over>(incsearch-scroll-f)
" map <C-k> <Over>(incsearch-scroll-b)


" Loupe {{{2

let g:LoupeCenterResults=0


" overlength.vim {{{2

let overlength#default_overlength = 80
let g:overlength#default_to_textwidth = 0

" autocmd FileType man call overlength#disable()


" tern_for_vim {{{2

autocmd FileType javascript nnoremap <buffer> <C-]> :TernDef<CR>


" UltiSnips{{{2

let g:UltiSnipsExpandTrigger =          "<tab>"
let g:UltiSnipsJumpForwardTrigger =     "<C-l>"
let g:UltiSnipsJumpBackwardTrigger =    "<C-h>"
" let g:UltiSnipsListSnippets =           "<C-s>"

let g:snips_author = "cjbassi"

let g:ultisnips_python_style = "google"

let g:ultisnips_javascript = {
    \ 'semi': 'never',
    \ }

autocmd FileType snippets set foldlevel=0


" vim-airline {{{2

let g:airline_powerline_fonts = 1
let g:airline_inactive_collapse = 0
" let g:airline_theme='powerlineish'
let g:airline_theme='solarized'
" let g:airline_theme='base16_solarized'
let g:airline_solarized_bg='dark'
" let g:solarized_base16=1

let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#whitespace#enabled = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_tab_nr = 1

let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#fnamecollapse = 1

let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c' ],
    \ [ 'x', 'y', 'z', 'error', 'warning' ]
    \ ]


" let g:airline_section_c = airline#section#create(['%{expand ("%:~")}'])

" let g:airline_section_c = airline#section#create(['%{system(\'pwd\')}'])
let g:airline_section_y = airline#section#create([' ', '%02c'])
let g:airline_section_z = airline#section#create(['☰  ', "%{printf('%03d/%03d', line('.'),  line('$'))}"])

let airline#extensions#promptline#snapshot_file = "~/.promptline.sh"
let g:airline#extensions#promptline#enabled = 1


" vim-asterisk{{{2

" map *  <Plug>(asterisk-z*)
" map g* <Plug>(asterisk-gz*)


" vim-auto-origami {{{2

augroup autofoldcolumn
    au!
    au FileWritePost,BufWinEnter * let &foldcolumn = auto_origami#Foldcolumn()
augroup END


" vim-autoformat {{{2

let g:autoformat_remove_trailing_spaces = 0
" let g:formatdef_my_custom_javascript = '"js-beautify -a -s ".&shiftwidth'
" let g:formatters_javascript = ['my_custom_javascript']

" augroup autoformat
"     au!
"     au BufWritePre *.js Autoformat()
" augroup END

" autocmd FileType mail
" autocmd BufWritePre :normal! gggqG

    " \ autocmd BufWritePre :exe "normal! " . "gggqG\<C-o>\<C-o>"<CR>


" vim-easy-align {{{2

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" vim-easymotion{{{2

map f <Plug>(easymotion-f)
map F <Plug>(easymotion-F)

map t <Plug>(easymotion-t)
map T <Plug>(easymotion-T)


" vim-gitgutter{{{2

set updatetime=250

" for leader
let g:gitgutter_map_keys = 0

highlight GitGutterAdd guibg=#073642
highlight GitGutterChange guibg=#073642
highlight GitGutterDelete guibg=#073642
highlight GitGutterChangeDelete guibg=#073642

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk

nmap <Leader>hp <Plug>GitGutterPreviewHunk

omap ih <Plug>GitGutterTextObjectInnerPending
omap ah <Plug>GitGutterTextObjectOuterPending
xmap ih <Plug>GitGutterTextObjectInnerVisual
xmap ah <Plug>GitGutterTextObjectOuterVisual


" vim-go {{{2

let g:go_fmt_fail_silently = 0


" indentLine {{{2

autocmd BufRead,BufNewFile *.md,*.txt
            \ let b:indentLine_enabled = 0 |

let g:indentLine_color_term = 239


" vim-ipmotion {{{2

let g:ip_skipfold=1


" vim-javascript {{{2

let g:javascript_plugin_flow = 1


" vim-jedi {{{2

let g:jedi#auto_vim_configuration = 0
let g:jedi#completions_enabled = 0
let g:jedi#goto_definitions_command = "<C-]>"


" vim-json{{{2

let g:vim_json_syntax_conceal = 0


" vim-jsx {{{2

let g:jsx_ext_required = 0


" vim-lastplace {{{2

let g:lastplace_open_folds = 0


" vim-markdown{{{2

let g:vim_markdown_conceal = 0

let g:markdown_fenced_languages = ['html', 'cpp', 'java', 'python', 'bash=sh']


" vim-move {{{2

let g:move_key_modifier = 'S'


" vim-node {{{2

set runtimepath^=~/.loca/share/nvim/plugged/vim-node


" vim-operator-flashy{{{2

map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

let g:operator#flashy#group = get(g:, 'operator#flashy#group', 'TermCursor')


" vim-racer {{{2

let g:racer_cmd = "/usr/bin"


" vim-ranger {{{2

let g:ranger_map_keys = 0


" vim-signature  {{{2

let g:SignatureMap = {
            \ 'Leader'             :  "m",
            \ 'PlaceNextMark'      :  "m,",
            \ 'ToggleMarkAtLine'   :  "m.",
            \ 'PurgeMarksAtLine'   :  "m-",
            \ 'DeleteMark'         :  "dm",
            \ 'PurgeMarks'         :  "m<Space>",
            \ 'PurgeMarkers'       :  "m<BS>",
            \ 'GotoNextLineAlpha'  :  "",
            \ 'GotoPrevLineAlpha'  :  "",
            \ 'GotoNextSpotAlpha'  :  "`]",
            \ 'GotoPrevSpotAlpha'  :  "`[",
            \ 'GotoNextLineByPos'  :  "]'",
            \ 'GotoPrevLineByPos'  :  "['",
            \ 'GotoNextSpotByPos'  :  "]`",
            \ 'GotoPrevSpotByPos'  :  "[`",
            \ 'GotoNextMarker'     :  "]-",
            \ 'GotoPrevMarker'     :  "[-",
            \ 'GotoNextMarkerAny'  :  "]=",
            \ 'GotoPrevMarkerAny'  :  "[=",
            \ 'ListBufferMarks'    :  "m/",
            \ 'ListBufferMarkers'  :  "m?"
            \ }


" vim-smooth-scroll {{{2

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 4)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 4)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 8)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 8)<CR>

" }}}
" vim-textobj-comment {{{2

let g:textobj_comment_no_default_key_mappings = 1

xmap ax <Plug>(textobj-comment-a)
omap ax <Plug>(textobj-comment-a)

xmap ix <Plug>(textobj-comment-i)
omap ix <Plug>(textobj-comment-i)

xmap aX <Plug>(textobj-comment-big-a)
omap aX <Plug>(textobj-comment-big-a)


" vim-vertical-move {{{2

map [v <Plug>(edgemotion-k)
map ]v <Plug>(edgemotion-j)


" Old Configs {{{1

" if has('path_extra')
"     setglobal tags-=./tags tags-=./tags; tags^=./tags;
" endif
" if !empty(&viminfo)
"     set viminfo^=!
" endif
" Load matchit.vim, but only if the user hasn't installed a newer version.
" if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
"     runtime! macros/matchit.vim
" endif

" Shows indents
"set list listchars=tab:\|\ ,
"highlight Tabs ctermbg=234
"call matchadd('Tabs', '\t')

"call matchadd('ColorColumn', '\%>80v.\+')

" bufferline
" let g:bufferline_active_buffer_left = ''
" let g:bufferline_active_buffer_right = ''
" let g:bufferline_modified = ' [+]'
" let g:bufferline_show_bufnr = 0
" let g:bufferline_echo = 0
" autocmd VimEnter *
"     \ let &statusline='%{bufferline#refresh_status()}'
"         \ .bufferline#get_status_string()

" Airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1

" delimimate
"let delimitMate_expand_cr = 1
"let g:AutoPairsFlyMode = 1

"inoremap <CR> <CR>x<BS>
"nnoremap o ox<BS>
"nnoremap O Ox<BS>

"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" let g:airline_theme='solarized'
" let g:airline_solarized_bg='dark'

" if &background == "dark"
"     let s:base03 = "NONE"
"     let s:base02 = "NONE"
" endif

" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'plasticboy/vim-markdown'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'raimondi/delimitmate'
" Plug 'lifepillar/vim-solarized8'
" Plug 'bling/vim-bufferline'
" Plug 'vim-airline/vim-airline'
" Plug 'powerline/powerline'
" Plug 'itchyny/lightline-powerful'
" Plug 'vim-ctrlspace/vim-ctrlspace'
" Plug 'PeterRincker/vim-bumblebee'
" Plug 'jiangmiao/auto-pairs'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'itchyny/lightline.vim'
" Plug 'yonchu/accelerated-smooth-scroll'

" nnoremap <silent> O O<Esc> :<C-u>execute "normal! " . v:count1 . "k"<CR>
" nnoremap <silent> O :<C-u>exe "normal! " . v:count1 . "O" \| if v:count == 0exe "normal! " . (v:count - 1) . "k" \| echo (v:count1) (v:count)<CR>
" nnoremap <silent> O O<Esc> :call <SID>o_fixer(v:count)<CR>

" " lightline
" let g:lightline = {
"     \ 'active': {
"     \   'left': [
"     \               [ 'mode', 'paste' ],
"     \               [ 'gitbranch', 'filename' ],
"     \               [ 'syntastic' ],
"     \   ],
"     \   'right': [
"     \               [ 'lineinfo'  ],
"     \               [ 'column'  ],
"     \               [ 'filetype'  ],
"     \   ],
"     \ },
"     \ 'inactive': {
"     \   'left': [
"     \               [ 'mode', 'paste' ],
"     \               [ 'gitbranch', 'filename' ],
"     \   ],
"     \   'right': [
"     \               [ 'lineinfo'  ],
"     \               [ 'column'  ],
"     \               [ 'filetype'  ],
"     \   ],
"     \ },
"     \ 'tabline': {
"     \   'left': [
"     \               [ 'tabs' ],
"     \   ],
"     \   'right': [
"     \   ],
"     \ },
"     \ 'component_function': {
"     \   'filename': 'LightlineFilename',
"     \   'gitbranch': 'fugitive#head',
"     \   'syntastic': 'SyntasticError',
"     \ },
"     \ 'component': {
"     \   'lineinfo': "%{printf('%03d/%03d', line('.'),  line('$'))}",
"     \   'column': '%02c',
"     \ },
"     \ }
" function! LightlineFilename()
"     let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
"     let modified = &modified ? ' +' : ''
"     return filename . modified
" endfunction

" function! s:setup_paste() abort
"     let s:paste = &paste
"     set paste
"     augroup unimpaired_paste
"         autocmd!
"         autocmd InsertLeave *
"             \ if exists('s:paste') |
"             \   let &paste = s:paste |
"             \   unlet s:paste |
"             \ endif |
"             \ autocmd! unimpaired_paste
"     augroup END
" endfunction
" nnoremap <silent> <Plug>unimpairedPaste :call <SID>setup_paste()<CR>
" nnoremap <silent> <leader>i :call <SID>setup_paste()<CR>i

" let g:indentLine_bgcolor_term = 202

" let g:powerline_pycmd = "py3"
" set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim


" let g:ac_smooth_scroll_du_sleep_time_msec=0
" let g:ac_smooth_scroll_fb_sleep_time_msec=0
" let g:ac_smooth_scroll_enable_accelerating=0

" let g:EasyOperator_line_do_mapping = 0

" map <Leader>l  <Plug>(easyoperator-line-select)
" map <Leader>dl <Plug>(easyoperator-line-delete)
" map <Leader>pl <Plug>(easyoperator-line-yank)

" let g:easytags_events = ['BufWritePost']

" " Ranger explorer
" function! RangerExplorer()
"     exec "silent !ranger --choosefile=/tmp/vim_ranger_current_file " . expand("%:p:h")
"     if filereadable('/tmp/vim_ranger_current_file')
"         exec 'edit ' . system('cat /tmp/vim_ranger_current_file')
"         call system('rm /tmp/vim_ranger_current_file')
"     endif
"     redraw!
" endfun

" nnoremap <silent> S ddkA<Enter>
" nnoremap <silent> o :call Forward_line(v:count)<CR>
" function! Forward_line(count) abort
"    :exe "normal! " . "A"i
" endfunction

" function! IndentWithI()
"     if len(getline('.')) == 0
"         return "\"_cc"
"     else
"         return "i"
"     endif
" endfunction
" nnoremap <expr> i IndentWithI()

" syn match myExCapitalWords +\<\w*[A-Z]\K*\>+ contains=@NoSpell
" syn match myExCapitalWords +\<\w*[A-Z]\K*\>\|'s+ contains=@NoSpell

" Ignore CamelCase words when spell checking
" fun! IgnoreCamelCaseSpell()
"   syn match CamelCase /\<[A-Z][a-z]\+[A-Z].\{-}\>/ contains=@NoSpell transparent
"   syn cluster Spell add=CamelCase
" endfun
" autocmd BufRead,BufNewFile * :call IgnoreCamelCaseSpell()

    " " Highlight trailing whitspace
    " highlight ExtraWhitespace ctermbg=red
    " augroup whitespace
    "     au!
    "     au VimEnter,WinEnter * call matchadd('ExtraWhitespace', '\s\+\%#\@<!$')
    " augroup END

" let g:fzf_buffers_jump = 1

" let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_layout = { 'window': '-tabnew' }

" nnoremap d "_d
" vnoremap d "_d
" nnoremap D "_D
" vnoremap D "_D

" nnoremap <Tab> i<Tab><Esc>

" Plug 'itchyny/vim-cursorword'

" set undolevels=100 " Limits undo level to 100, limits file size

" set clipboard=unnamed

" nnoremap <silent> <leader>th :nohlsearch<CR>

" autocmd BufRead,BufNewFile *.md,*.txt
"             \ let b:indentLine_enabled = 0 |
            " if &modifiable
            "     \ setlocal spell |
            " fi

            " \ let b:cursorword = 1 |

"nmap f <Plug>(easymotion-overwin-f2)

" Plug 'jelera/vim-javascript-syntax'
" Plug 'othree/yajs.vim'

" Plug 'lifepillar/vim-mucomplete'
" Plug 'ervandew/supertab'
" Plug 'Valloric/YouCompleteMe', { 'dir': '~/.local/share/nvim/plugged/YouCompleteMe', 'do': './install.py --clang-completer' }
" Plug 'ajh17/vimcompletesme'
" Plug 'https://github.com/vim-scripts/txt.vim'

" rainbow-parens

" let g:rainbow_active = 1
" let g:rainbow_conf = {
" \   'ctermfgs' : ['28', '196', '112', '208', '129', '166', '85', '237'],
" \	'operators': '_,_',
" \	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
" \	'separately': {
" \		'*': {},
" \		'tex': {
" \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
" \		},
" \		'vim': {
" \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
" \		},
" \		'html': {
" \			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
" \		},
" \		'css': 0,
" \	}
" \}


" Promptline{{{

" let g:promptline_preset = {
"         \'b' : [ promptline#slices#cwd() ],
"         \'c' : [ promptline#slices#jobs() ],
"         \'y' : [ promptline#slices#vcs_branch() ],
"         \'z' : [ promptline#slices#git_status() ],
"         \'warn' : [ promptline#slices#last_exit_code() ]}

        " \'a' : [ promptline#slices#host({ 'only_if_ssh': 1 }) ],
        " \'a' : [ promptline#slices#vi_mode() ],

" PromptlineSnapshot! ~/config/dotfiles/.promptline.sh airline
" }}}

" function! Format()
"     if &tw != 0
"         :exe "normal! " . "gggqG\<C-o>\<C-o>"
"     else
"         :Autoformat<CR>
"     endif
" endfunction


" syntastic {{{2

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1

" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_auto_jump = 0
" let g:syntastic_loc_list_height = 5
" let g:syntastic_echo_current_error = 0

" highlight ColorColumn ctermbg=DarkGrey

" " Highlight text past 80 columns
" if !exists('g:vimpager.enabled') && &modifiable
"     augroup ColorColumn
"         au!
"         au VimEnter,WinEnter * call matchadd('ColorColumn', '\%81v.\+', -1)
"     augroup END
" endif

" highlight ColorColumn ctermbg=DarkGrey


" augroup ColorColumn
"     au!
"     au VimEnter,WinEnter * 
" augroup END

" Vimpager {{{2

" if exists('g:vimpager.enabled')
"     let g:vimpager = {}
"     let g:less     = {}
"     let g:less.enabled = 0

"     let g:indentLine_enabled = 0

"     set nonumber
"     set norelativenumber

"     " let g:vimpager.passthrough = 0
" endif

" }}}


" Plug 'craigemery/vim-autotag'

" map <C-n> :NERDTreeToggle<CR>
" let NERDTreeIgnore = ['\.pyc$', '\.o$']
" let NERDTreeMinimalUI=1

" smart :bd {{{2
" If more than 1 buffer exists close current buffer while retaining splits.
" bangs(!) are supported as well as arguments after :bd (:bd index.html, etc)
" function! SmartBD(bang, argu)
" 		if a:bang == 1
" 			let bang = "!"
" 		else
" 			let bang = " "
" 		endif

" 		if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
" 			execute "bd" . bang . " " . a:argu
" 		else
" 			bp
" 			execute "bd" . bang . " #"
" 		endif

" endfunction

" command! -bang -nargs=* BD call SmartBD(<bang>0, <q-args>)
" " cnoreabbrev bd BD
