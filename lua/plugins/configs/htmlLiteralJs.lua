vim.cmd [[
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

  command! Htl silent %s/\(return\|=\)\(.\|\)`/\1 html`/g
  command! HtlSave silent call HtlSave()
  nnoremap <silent> <leader><leader>w :HtlSave<CR>
]]
-- html on js literal
-- cmd("Htl","%s/\(return\|=\)\(.\|\)`/\1 html`/g",{})
