" use <c-space>for trigger completion
inoremap <expr> <Up> coc#pum#visible() ? coc#pum#prev(1) : "\<up>"
inoremap <expr> <Down> coc#pum#visible() ? coc#pum#next(1) : "\<down>"
inoremap <expr> <c-k> coc#pum#visible() ? coc#pum#prev(1) : "\<up>"
inoremap <expr> <c-j> coc#pum#visible() ? coc#pum#next(1) : "\<down>"
let g:coc_snippet_next = '<tab>'
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\  \<c-r>=coc#on_enter()\<CR>"
" confirm snippet
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" scroll info 
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>
nnoremap <silent> <Leader>tl :call Jsgoto()<CR>
nmap <silent> <leader>tg <Plug>(coc-definition)
nmap <silent> <leader>ti <Plug>(coc-fix-current)
nmap <leader>tn <Plug>(coc-rename)
nmap <leader>th <Plug>(coc-rename)
" Prettier
command Prettier CocCommand prettier.formatFile
