-- active wiki in other ext
vim.api.nvim_create_user_command('WikiActive', function()
  local origin_file_type = vim.bo.filetype
  local cmd = [[
    set filetype=markdown
    set filetype=vimwiki
  ]]
  vim.cmd(cmd)
  require('configs.editor.wiki.mapping')()
  vim.cmd('set filetype=' .. origin_file_type)
end, {})
