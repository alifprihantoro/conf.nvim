-- active wiki in other ext
vim.api.nvim_cmd('WikiActive', function()
  local origin_file_type = vim.bo.filetype
  local cmd = [[
    set filetype=markdown
    set filetype=vimwiki
  ]] .. 'set filetype=' .. origin_file_type
  vim.cmd(cmd)
end,{})
