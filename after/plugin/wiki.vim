" vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_key_mappings = {
            \ 'all_maps': 1,
            \ 'global': 1,
            \ 'headers': 1,
            \ 'text_objs': 1,
            \ 'table_format': 1,
            \ 'table_mappings': 0,
            \ 'lists': 1,
            \ 'links': 1,
            \ 'html': 1,
            \ 'mouse': 0,
            \ }
let g:vimwiki_listsyms = ' .○◐●x'

" visual enter change link
" enter normal go to link
" vim wiki---------
" toogle checklist fow vimwiki
autocmd FileType markdown nnoremap <buffer> <leader>' :VimwikiToggleListItem<CR>
" change symbol wiki
autocmd FileType markdown nnoremap <buffer> <leader>vs :VimwikiListChangeSymbolI

" wiki --------
" change symbol
autocmd FileType markdown vnoremap <buffer> <Space>vs :VimwikiListChangeSymbolI
" toggle
autocmd FileType markdown vnoremap <buffer> <leader>' :VimwikiToggleListItem<CR>
