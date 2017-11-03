set number

set linebreak   " Break lines at word (requires Wrap lines)
set showbreak=+++   " Wrap-broken line prefix
set textwidth=100   " Line wrap (number of cols)
set showmatch   " Highlight matching brace
set virtualedit=onemore " Enable free-range cursor
set visualbell  " Use visual bell (no beeping)
 
set hlsearch    " Highlight all search results
set smartcase   " Enable smart-case search
set ignorecase  " Always case-insensitive
set incsearch   " Searches for strings incrementally
 
set autoindent  " Auto-indent new lines
set shiftwidth=2    " Number of auto-indent spaces
set smartindent " Enable smart-indent
set smarttab    " Enable smart-tabs
set softtabstop=2   " Number of spaces per Tab
 
set undolevels=1000  " Number of undo levels
set backspace=indent,eol,start   " Backspace behaviour

execute pathogen#infect()
call pathogen#helptags()

"VIM bindings to insert blank lines with Enter and Shift-Enter
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>

" NERDTree show hidden files (dotfiles)
let NERDTreeShowHidden=1

" quicker update for git gutter
set updatetime=250

" Navigate vim splits with CTRL+(h,j,k,l)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" easier vim splits
set splitbelow
set splitright

" for vim-jsx to highlight .js files
let g:jsx_ext_required = 0 

" for Syntastic to work with jsx/React
let g:syntastic_javascript_checkers = ['eslint']

" Fix my JS
let g:fixmyjs_rc_filename = ['.eslintrc', '.eslintrc.json']
noremap <Leader><Leader>f :Fixmyjs<CR>
