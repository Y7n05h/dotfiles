autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}

" ### Comment For vscode
xmap <leader>cc  <Plug>VSCodeCommentary
nmap <leader>cc  <Plug>VSCodeCommentary
omap <leader>cc  <Plug>VSCodeCommentary
nmap <leader>cc <Plug>VSCodeCommentaryLine
nnoremap gt <Cmd>call VSCodeNotify('editor.action.goToTypeDefinition')<CR>
nnoremap gi <Cmd>call VSCodeNotify('editor.action.goToImplementation')<CR>
nnoremap gr <Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>
" EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1 " US layout

" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)
nmap s <Plug>(easymotion-bd-f2)

map <Leader>y <Plug>(easymotion-lineforward)
map <Leader>n <Plug>(easymotion-j)
map <Leader>i <Plug>(easymotion-k)
map <Leader>o <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
map  <Leader>w <Plug>(easymotion-bd-w)
"Plug Manager


call plug#begin(stdpath('data') . '/plugged')
Plug 'lilydjwg/fcitx.vim'
Plug 'tpope/vim-surround'
Plug 'asvetliakov/vim-easymotion', { 'as': 'vsc-easymotion' }
call plug#end()

