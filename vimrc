""" Full.vimrc """
syntax on
set nocompatible
""" Line.5~7: Setting for lightLine
"set showcmd
"set cmdheight=2
set noshowmode

""" Enable line number
set nu

""" Enable mouse
set mouse=a

""" Check filetype and indent of file automatically
filetype plugin indent on

""" <relativenumber> All lines will show their relative number
""" except for current line, whitch will show its absolute line number
"set relativenumber

""" <tabstop> The size of actual tab characters in the buffer
set tabstop=4

""" <softtabstop> The number of 'spaces' inserted when hitting the tab key
set softtabstop=2

""" <shiftwidth> The size of indents
set shiftwidth=2

""" cindent is based on smartindent
""" smartindent is based on autoindent
set cindent

""" <expandtab> Enable insert spaces when passing Tab
set expandtab

""" '·' and '⎸' symbols need utf-8 encoding
set encoding=utf-8
""" Show all spaces that are at the end of lines with '·' symbol
set list
set listchars=trail:·

""" enable 256 colors
set t_Co=256

""" Use vim build-in theme:
"""   default, koehler, darkblue, desert, shine, ron, torte
""" Put custom theme files into ~/.vim/colors/, then you also can use them
colorscheme torte

""" hlsearch enable high light of searching result
set hlsearch
hi Search cterm=bold ctermbg=220 ctermfg=0
""" Highlight searching result when typing.
set incsearch

""" Highlight current line and column
set cursorline
hi CursorLine cterm=bold ctermbg=235
set cursorcolumn
hi CursorColumn cterm=bold ctermbg=235

""" The background of vim
""" (I think it is better with terminal has transparent background
""" Also, the current line and column background color are set to None)
"hi Normal ctermbg=None

""" Column GuideLine
""" (/\%81v.\+/ => The font color will be red after col.81(included))
hi OverLength ctermfg=red
match OverLength /\%81v.\+/

""" Popup Menu Color
" Popup menu
hi Pmenu ctermbg=235 ctermfg=250
" Selected on popup menu
hi PmenuSel ctermbg=94 ctermfg=220
" Scrollbar on popup menu
hi PmenuSbar ctermbg=240
" Thumb of scrollbar on popup menu
hi PmenuThumb ctermbg=250

""" Highlight pair bracket
set showmatch
hi MatchParen cterm=bold ctermbg=none ctermfg=201

""" Enable code folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

""" Plug-in Settings """
""" coc-vim
" use <tab> for trigger completion and navigate to the next complete item.
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

""" indentLine
" Customize color of indent line.
let g:indentLine_color_term = 240
" Customize display of indent line.
let g:indentLine_char = '⎸'

""" NERDTree
" Map a specific key or shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>
" Make NERDTree always open on the right side
let g:NERDTreeWinPos = "right"

""" lightline
" with setting: Line.5~7
" Set this if statusline is blank
set laststatus=2

""" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" Using Pathogen to control plugin
execute pathogen#infect()
