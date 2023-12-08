_G.TreeOpenNow = function()
  local pwd = vim.api.nvim_command_output 'echo system("pwd")'
  vim.cmd('Neotree ' .. pwd)
end
