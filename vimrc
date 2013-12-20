execute pathogen#infect()
syntax on
filetype plugin indent on

let g:ycm_key_list_select_completion = []

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" vim-powerline setting
set laststatus=2 
set nocompatible 
set t_Co=256 
let g:Powerline_symbols = 'unicode'

set nocompatible
set backspace=indent,eol,start
set cpt=.,w,b
let g:AutoPairsShortcutFastWrap = '..'
let g:ctrlp_map = ',,'
let g:ctrlp_open_multiple_files = 'v'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }
set guifont=DejaVu\ Sans\ mono\ 13
colorscheme desert
set number
set autoindent
set smartindent
set expandtab
filetype on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ignorecase

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 插入匹配括号
""inoremap ( ()<LEFT>
""inoremap [ []<LEFT>
""inoremap { {}<LEFT>
""inoremap < <><LEFT>
""inoremap ' ''<ESC>i
""inoremap " ""<ESC>i

"function ClosePair(char)
"if getline('.')[col('.') - 1] == a:char
"return "\"
"else
"return a:char
"endif
"endf

" 按退格键时判断当前光标前一个字符，如果是左括号，则删除对应的右括号以及括号中间的内容
"function! RemovePairs()
"    let l:line = getline(".")
"    let l:previous_char = l:line[col(".")-1] " 取得当前光标前一个字符
" 
"    if index(["(", "[", "{"], l:previous_char) != -1
"        let l:original_pos = getpos(".")
"        execute "normal %"
"        let l:new_pos = getpos(".")
" 
"        " 如果没有匹配的右括号
"        if l:original_pos == l:new_pos
"            execute "normal! a\<BS>"
"            return
"        end
" 
"        let l:line2 = getline(".")
"        if len(l:line2) == col(".")
"            " 如果右括号是当前行最后一个字符
"            execute "normal! v%xa"
"        else
"            " 如果右括号不是当前行最后一个字符
"            execute "normal! v%xi"
"        end
" 
"    else
"        execute "normal! a\<BS>"
"    end
"endfunction
" 用退格键删除一个左括号时同时删除对应的右括号
"inoremap <BS> <ESC>:call RemovePairs()<CR>a

" 输入一个字符时，如果下一个字符也是括号，则删除它，避免出现重复字符
"function! RemoveNextDoubleChar(char)
"    let l:line = getline(".")
"    let l:next_char = l:line[col(".")] " 取得当前光标后一个字符
" 
"    if a:char == l:next_char
"        execute "normal! l"
"    else
"        execute "normal! i" . a:char . ""
"    end
"endfunction
"inoremap ) <ESC>:call RemoveNextDoubleChar(')')<CR>a
"inoremap ] <ESC>:call RemoveNextDoubleChar(']')<CR>a
"inoremap } <ESC>:call RemoveNextDoubleChar('}')<CR>a
"inoremap > <ESC>:call RemoveNextDoubleChar('>')<CR>a
