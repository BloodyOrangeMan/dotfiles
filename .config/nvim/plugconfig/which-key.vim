" GENERAL
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
  let g:which_key_map =  {}

" Define a separator
  let g:which_key_sep = '→'

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


" SINGLE MAPPINGS
let g:which_key_map['d'] = [ ':bd!'                  , 'delete buffer']
let g:which_key_map['e'] = [ ':CocCommand explorer'  , 'explorer' ]
let g:which_key_map['q'] = [ ':wqa!'                  , 'quit' ]
let g:which_key_map['w'] = [ ':w'                    , 'write' ]
let g:which_key_map['r'] = [ ':source $MYVIMRC'      , 'reload config' ]
let g:which_key_map['u'] = [ 'UndotreeToggle'        , 'undo' ]
let g:which_key_map['t'] = [ ':TerminalSplit zsh'        , 'terminal' ]
" let g:which_key_map['t'] = [ ':OnlineThesaurusCurrentWord<CR>'      , 'thesaurus' ]
" let g:which_key_map['j'] = [ '<Plug>(easymotion-prefix)' , 'motion' ]

"V for Vimtex
let g:which_key_map.V = {
	\ 'name' : '+Vimtex' ,
	\ 'b' : [ 'VimtexCompile'         , 'build' ],
	\ 'p' : [ 'VimtexView'            , 'preview' ],
	\ 'i' : [ 'VimtexTocOpen'         , 'index' ],
	\ 'k' : [ 'VimtexClean'           , 'kill aux' ],
	\ 'l' : [ 'VimtexErrors'          , 'error log' ],
	\ 'c' : [ ':VimtexCountWords!'    , 'count' ],
	\}




autocmd VimEnter * call which_key#register('<Space>', "g:which_key_map")

