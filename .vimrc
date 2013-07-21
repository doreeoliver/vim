"" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"call pathogen#runtime_append_all_bundles()

"suggested use
" call pathogen#incubate()"
call pathogen#infect()
call pathogen#helptags()

" Lusty wants hidden
set hidden

"fugitive's git status line"
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %{fugitive#statusline()}

filetype on
filetype plugin indent on
syntax on

" disable auto commenting for all files
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
"" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"" au InsertLeave * match ExtraWhitespace /\s\+$/

" notify about unused imports or missing colons
let g:pyflakes_use_quickfix = 0

" consistency with pep8
let g:pep8_map='<leader>8'

" Better copy & paste with F2
set pastetoggle=<F2>
set clipboard=unnamed

"map keys for navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Removes highlight of your last search
 noremap <C-h> :nohl<CR>
 vnoremap <C-h> :nohl<CR>
 inoremap <C-h> :nohl<CR>

" Mouse and backspace
set mouse=a " on OSX press ALT and click
set bs=2 " make backspace behave like normal again

" Default of SuperTab code complete is tab set to shift tab
" and shift space tab for backward completion
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<s-tab-space>'

" Tab completion to enable omni code completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" Rebind <Leader> key
let mapleader = ","

" Reset binding for TaskList todo list
map <leader>td <Plug>TaskList

" bind key to Gondo toggle
map <leader>g :GundoToggle<CR>

" bind key to NerdTree
map <leader>n :NERDTreeToggle<CR>

" rename and jump to definitions
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

"Quick quit command
noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>E :qa!<CR> " Quit all windows

" Execute the tests
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>

" cycle through test errors
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" map sort function to a key
vnoremap <Leader>s :sort<CR>

"easier moving of code blocks
" " Try to go into visual mode (v), select several lines of code here and
" " then press ``>`` several times.
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

"Showing line numbers and length
set number " show line numbers
set tw=79 " width of document (used by gd)
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

"easier formatting of paragraphs
vmap Q gq
nmap Q gqap

"Useful settings
set history=700
set undolevels=700

set foldmethod=indent
set foldlevel=99

colorscheme jellybeans

