vim.cmd [[
  let g:vimwiki_map_prefix = '<leader>v'
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

]]
