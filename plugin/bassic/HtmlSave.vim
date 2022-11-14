function HtlSave() abort
  let LAST_UNDO_COUNT = changenr()
  let LINE_NOW = line(".")
  execute "%s/html`/`/g"
  execute 'w|e'
  let UNDO_COUNT = changenr()
  let RESULT_COUNT = UNDO_COUNT-LAST_UNDO_COUNT
  execute 'earlier '.RESULT_COUNT
  execute 'normal!'.LINE_NOW.'G'
endfunction

command! HtlSave silent call HtlSave()
nnoremap <silent> <leader><leader>w :HtlSave<CR>
" = html`
" = html`
" = html`
" ini beda
