vim.cmd [[
  " handle url
  function! HandleURL()
    let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
    echo s:uri
    if s:uri != ""
      silent exec "!termux-open-url '".s:uri."'"
    else
      echo "No URI found in line."
    endif
  endfunction
]]
vim.keymap.set('n','<leader><CR>',":call HandleURL()<CR>",{silent = true, noremap = true})
