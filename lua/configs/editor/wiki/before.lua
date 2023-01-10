vim.cmd [[
let g:vimwiki_map_prefix = '<leader>v'
" vimwiki
let wiki_1 = {}
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'
let g:vimwiki_list = [wiki_1]

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
let g:vimwiki_listing_hl = 0
let g:vimwiki_hl_headers = 0
let g:vimwiki_hl_cb_checked = 0
]]
