" Map leader to which_key
"nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
"vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" maps
let g:which_key_map['t'] = [':NERDTree'   , 'nerdtree']
let g:which_key_map['r'] = [':Ranger'     , 'ranger']
let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'c' : ['<C-W>c'     , 'delete-window']         ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ '<' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ '+' : [':resize +5' , 'expand-window-below']   ,
      \ '>' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ '-' : [':resize -5' , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-right']    ,
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")