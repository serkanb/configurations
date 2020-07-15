" change leader to ,
let mapleader=","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Manage plugins using Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" Asynchronous linting
" Plugin 'w0rp/ale'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Run asynchronous commands
Plug 'skywind3000/asyncrun.vim'

" Switch between source/header
Plug 'vim-scripts/a.vim'

" Auto formatting
Plug 'Chiel92/vim-autoformat'

" Fuzzy search
" Plug 'ctrlpvim/ctrlp.vim'

" auto-completion for parenthesis, brackets, quotes, etc
Plug 'Raimondi/delimitMate'

" Generate doxygen comments
Plug 'vim-scripts/DoxygenToolkit.vim'

" IndentLine guides
Plug 'Yggdroot/indentLine'

" several fancy color schemes
Plug 'flazz/vim-colorschemes'

" comment multiple lines
Plug 'scrooloose/nerdcommenter'

" visual plugin to show directory trees and navigate
Plug 'scrooloose/nerdtree'

" Plugin to manage most recently used files
Plug 'yegappan/mru'

" fancy tagbar to be used with exuberant-ctags to navigate into functions
Plug 'majutsushi/tagbar'

" Status line plugin
Plug 'vim-airline/vim-airline'

" Status line themes
Plug 'vim-airline/vim-airline-themes'

" Git integration
Plug 'tpope/vim-fugitive'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Ripgrep search
Plug 'jremmen/vim-ripgrep'

Plug 'fholgado/minibufexpl.vim'
"
" Supertab
" Plug 'ervandew/supertab'

" Fuzzy finder
set rtp+=~/.fzf
Plug 'junegunn/fzf.vim'

" vim enhanced cpp highlight
Plug 'octol/vim-cpp-enhanced-highlight'

" Delete all the buffers except the current buffer
Plug 'schickling/vim-bufonly'

" Clang formatter
Plug 'rhysd/vim-clang-format'

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'


" rtags plugin
" Plugin 'lyuts/vim-rtags'

" Plugin 'prabirshrestha/async.vim'

" Plugin 'prabirshrestha/vim-lsp'

" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use vim settings, rather then vi settings
set nocompatible

" Change shell
set shell=bash

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

" automatically update when a file is changed outside
set autoread

" vimdiff option to ignore whitespace comparison
set diffopt+=iwhite
set diffexpr=""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enables mouse 'all'
set mouse=a
" keep the cursor away from top/bottom
set scrolloff=4

" tab completion such as bash
set wildmenu
set wildmode=longest:full
" ignore files and directories
set wildignore+=*/tmp/*,*/.cache/*,*/.git/*,*.so,*~,*.pyc,*.bak,*.class,*.swp,*.zip,*.pdf
set wildignore+=*\\tmp\\*,*.exe  " Windows

" Always show a status bar
set laststatus=2
" display line numbers
set number
" display incomplete commands
set showcmd
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
"Always show current position
set ruler
" Height of the command bar
set cmdheight=2
" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

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

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" No spaces between rows
set linespace=0

" Make the copied text through yank command available in the system clipboard
set clipboard=unnamedplus

" Since Vim will source .vimrc from any directory you run Vim from, this is
" a potential security hole; so, you should consider setting secure option.
" This option will restrict usage of some commands in non-default .vimrc files;
" commands that write to file or execute shell commands are not allowed and map commands are displayed.
set secure


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enable syntax highlighting
syntax enable

" enable 256 color pallete for the terminal
if !has("gui_running")
  set t_Co=256
endif

" dark color scheme
"colorscheme Monokai
colorscheme gruvbox
set background=dark

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,mac,dos

""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""

" Turn backup off
set nobackup
set nowb
set noswapfile
set nobackup
set nowritebackup

" Sets how many lines of history VIM has to remember
set history=1000
" persistent undo
set undofile
" maximum number of changes that can be undone
set undolevels=1000
 "maximum number lines to save for undo on a buffer reload
set undoreload=10000
" undo directory
set undodir=~/.vim/.undo,~tmp,/tmp
" backup directory
set backupdir=~/.vim/.backup//
" swap directory
set directory=~/.vim/.swp//

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs
set smarttab

" 1 tab == 2 spaces
set shiftwidth=3
set tabstop=3
set softtabstop=3

" Linebreak on 500 characters
set lbr
set textwidth=500

"Auto indent enables the use of indentention of previous line
set autoindent
"Smart indent allows the use of c indentation
set smartindent

"Wrap lines
set wrap
"disable preview scratch window
set completeopt=longest,menuone

"remove boost includes from complete because it slows down the auto-completion
set include=^\\s*#\\s*include\ \\(<boost/\\)\\@!

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntatic and spell check
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Spell checking
set spelllang=en_us             " English as default language
" set complete+=kspell            " Word completion
set nospell                     " Disable by default


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Searches for tags file in cur directory and up until HOME
set tags=./tags,tags;$HOME

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Disable arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Disable PageUp/PageDown
noremap <PageUp> <Nop>
noremap <PageDown> <Nop>

" disable entering in replace mode when pressing insert twice. You can still enter in replace mode using R
imap <Insert> <Nop>
inoremap <S-Insert> <Insert>

" maps from: pazams/d-is-for-delete
" The idea is to remap the delete commands to put them in the black hole register
" This avoids that delete copies the deleted line/block to the buffer
" nnoremap x "_x
" nnoremap X "_X
" nnoremap d "_d
" nnoremap D "_D
" vnoremap d "_d
" nnoremap <leader>d ""d
" nnoremap <leader>D ""D
" vnoremap <leader>d ""d

" F7 - Toggle spell check
noremap <F7> :setlocal spell!<CR>

"ctags maps
"open definition in a new tab
map <C-/> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"open definition in a vertial split
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"Tags tag to open selection with multiple tags of the same name are present. Otherwise go to the definition.
map <C-]> g<C-]>

" Useful mappings for managing tabs
" nnoremap <Tab> :tabnext<CR> 
nnoremap <S-Tab> :tabprevious<CR>

" Mappings for opening terminal
nnoremap <leader><leader>v :vertical terminal<CR>
nnoremap <leader><leader>s :terminal<CR>

" yank from cursor to the end of the line
nnoremap Y y$

" yw always yanks the whole word
nnoremap yw yiw 

" faster moving
nnoremap <C-j> jjjj
nnoremap <C-k> kkkk 
nnoremap <C-h> hhhh 
nnoremap <C-l> llll 

" Hard mapping of upper cases letters in normal mode
" To avoid problems when CapsLock is enabled
" nnoremap H h
" nnoremap J j
" nnoremap K k
" nnoremap L l 
" noremap <Tab> <Nop>

" Find and replace
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Specific Configurations 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Async run
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:asyncrun_open = 6

" F12 to run ccmake
nnoremap <silent> <F12> :AsyncRun gradle bEx<cr>

" F10 to toggle quickfix window
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
map <leader>j :cn<CR>
map <leader>k :cp<CR>

" F3 to search keyword under cursor
" noremap <silent><F3> :AsyncRun grep -i -s -R <C-R><C-W> ./ --include='*.h*' --include='*.c*' --include='*.ddf' <cr>

" noremap <silent><F3> :AsyncRun rg --color --pretty -g '*.{h,hpp,c,cpp,py,ddf}' <C-R><C-W> ./ <cr>
nnoremap <silent><F3> :Rg <C-R><C-W><CR> 
nnoremap <silent><c-p> :Files <CR> 
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F4 - open source/header switch in a vertical tab
map <F4> :AV<CR>
" F5 - open the file under the cursor in a vertical tab
map <F5> :IHV<CR>

let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,sgr:../inc/bld,sfr:../lib,sfr:../../../xifs'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ClangFormat format
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When using clang-format and a .clang-format config file,
" an interactive guide can be found in https://clangformat.com/
" and https://clang.llvm.org/docs/ClangFormatStyleOptions.html

" Format selected block
autocmd FileType c,cpp,objc nnoremap <buffer><leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><leader>cf :ClangFormat<CR>
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>


:function ReadClangCompleteFile()
:  try
:    return join(readfile('./.clang_complete'), " ")
:  catch /.*/
:    return ""
:  endtry
:endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => COC nvim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ctags Bar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open Tagbar
nmap <F9> :TagbarToggle<CR>


""""""""""""""""""""""""""""""
" => Dox
""""""""""""""""""""""""""""""
" Create doxygen comment
map <F6> :Dox<CR>


""""""""""""""""""""""""""""""
" => IndentLine plugin
""""""""""""""""""""""""""""""
"Set to green the indent line
let g:indentLine_color_term = 23

" GVim
let g:indentLine_color_gui = "#A4E57E"

"Set the specific character for indent guide
let g:indentLine_char = '|'


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 100
let MRU_Max_Menu_Entries = 20

let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'  " For Unix
let MRU_Exclude_Files = '^c:\\temp\\.*'           " For MS-Windows

nnoremap <Leader>m :MRU<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdCommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Open nerdtree
nnoremap <silent> <F8> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='bubblegum'
let g:airline_solarized_bg='dark'

let g:airline#extensions#whitespace#enabled = 0
let g:airline_inactive_collapse = 0                         " Do not collapse the status line while having multiple windows
" let g:airline#extensions#tabline#enabled = 1                " Display tab bar with buffers
let g:airline#extensions#branch#enabled = 1                 " Enable Git client integration

let g:airline#extensions#capslock#enabled = 1

" does not work on VDI
let g:airline_powerline_fonts = 1

set guifont=Roboto\ Mono\ for\ Powerline "make sure to escape the spaces in the name properly
let g:Powerline_symbols='unicode'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '->'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-better-whitespace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable/Disable highlighting of trailing whitespace
" let g:better_whitespace_enabled=0
" nnoremap <silent> <F2> :ToggleWhitespace<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_autoclose = 1


"""""""""""""""""""""""""""
" SuperTab plugin
""""""""""""""""""""""""""

" let g:SuperTabLongestHighlight=1
" let g:SuperTabLongestEnhanced=1

" if executable('clangd')
    " au User lsp_setup call lsp#register_server({
    "     \ 'name': 'clangd',
    "     \ 'cmd': {server_info->['clangd']},
    "     \ 'whitelist': ['c', 'cpp'],
    "     \ })
    " autocmd FileType c setlocal omnifunc=lsp#complete
    " autocmd FileType cpp setlocal omnifunc=lsp#complete
" endif
" if executable('cquery')
"    au User lsp_setup call lsp#register_server({
"       \ 'name': 'cquery',
"       \ 'cmd': {server_info->['cquery']},
"       \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
"       \ 'initialization_options': { 'cacheDirectory': '/home/vlivrame/tmp' },
"       \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
"       \ })
" endif

" let g:lsp_diagnostics_enabled = 1
" let g:lsp_async_completion = 1

" let g:lsp_signs_enabled = 1         " enable signs
" let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode

" let g:lsp_signs_error = {'text': '>>', 'icon': '/home/vlivrame/error.png'}
" let g:lsp_signs_warning = {'text': '!!', 'icon': '/home/vlivrame/warning.png'}

" let g:lsp_virtual_text_enabled = 1
" let g:lsp_highlights_enabled = 1
" let g:lsp_textprop_enabled = 1
" let g:lsp_use_event_queue = 1


""""""""""""""""""""""""""""
" Vim cpp enhanced highlight
""""""""""""""""""""""""""

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

""""""""""""""""""""""""""""
" Vim rtags 
""""""""""""""""""""""""""

" let g:rtagsAutoLaunchRdm = 1

""""""""""""""""""""""""""""
" Added specific for ASML
""""""""""""""""""""""""""
" if has("gui_running")
  " " Maximize gvim window
  " set lines=999 columns=999
" endif

source ~/.vim/configs/cscope_maps.vim

