require('git').setup()
local cmd = vim.api.nvim_create_user_command
function TesPrint(args)
  local TesIni = args["args"]
  vim.cmd('echo "'..TesIni..'"')
end
cmd("Gsp", TesPrint , { nargs = '?' })
