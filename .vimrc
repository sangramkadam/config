
set nocompatible "Enter current millenium-- do not assume vi

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" INDENTATION-- SPACES AND TABS 
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabstop=4 "Number of visual spaces per TAB
set softtabstop=4 "Number of spaces in tab when editing
set expandtab "tabs are spaces
set autoindent "New line inherits indentation of previous line
filetype indent on "Enable file-specific indent rules 
set shiftround "When shifting lines, round the indentation to nearest multiple of shiftwidth
set shiftwidth=4 "When shifting, indent using 4 spaces
se cindent "c style indenting

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" UI CONFIGURATION
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number "show line numbers
set relativenumber "show relative line numbers w.r.t. current line
set showcmd "show last command in bottom bar
set cursorline "highlight current line
"Hilight color value for background
hi CursorLine   cterm=NONE ctermbg=60
set wildmenu "visual autocomplete for command menu
set complete-=i "Limit the files searched for auto-completes
set lazyredraw "Don't update screen during macro and script execution
set showmatch "highlight matching brackets
set wrap "Enable line wrapping
set noerrorbells "Disable beep on errors
"set visualbell "Flash the screen instead of beeping on errors
set mouse=a "Enable mouse for scrolling and resizing
set title "Set the window's title as file being edited
syntax enable "Enable syntax
filetype plugin on "Enable vim plugin


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" SEARCHING
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set incsearch "search as characters are entered
set hlsearch "highlight matches
"turn off search hilight by pressing space
nnoremap <leader><space> :nohlsearch<CR> 

"Fuzzy File searching
set path+=** "Search down into subfolders & tab-completion

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" FOLDING 
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nofoldenable "Disable folding by default
set foldmethod=indent "Fold based on indentation levels
set foldnestmax=3 "only fold upto three nested levels


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" KEY MAPPING  
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Move to beginning/end of line using B/E 
nnoremap B ^
nnoremap E $
" map jj to esc
imap jj <Esc>
" Space to clear last search highlighting
nnoremap ,<space> :nohlsearch<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" SNIPPETS 
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"New C code snippet
nnoremap ,cnew :-1read $ $HOME/.vim/snippets/.new.c<CR>7ja

