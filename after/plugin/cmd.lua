local cmd = vim.api.nvim_create_user_command

-- command
cmd('De', 'cd ~/', {})
cmd('Dc', 'cd ~/.myconfig', {})
-- cd now",{})
cmd('Cdn', 'cd %:p:h', {})
-- cd before dir now",{})
cmd('Cb', 'cd ..', {})
-- close all buffer without current",{})
cmd('Bda', '%bdelete|edit#|bdelete#', {})
-- cd git root",{})
cmd('Cdg', "exec 'cd' fnameescape(fnamemodify(finddir('.git', escape(expand('%:p:h'), ' ') . ';'), ':h'))", {})
-- variable git",{})
cmd('LetGit', "let DIRGIT=fnameescape(fnamemodify(finddir('.git', escape(expand('%:p:h'), ' ') . ';'), ':h'))", {})
-- vim plug go to",{})
cmd('Gplugvim', 'call Goplugvim()', {})
cmd('Help', "exe 'tabnew '.nvimplug.'/nvim-conf/help/home.md'", {})
-- plugin on wiki",{})
cmd('W1', 'e ~/wiki/development/index.wiki', {})
cmd('Cmdh', function()
  local CURRENT_HEIGHT = vim.api.nvim_command_output('set cmdheight'):gsub('.*=', '')
  local IsZero = CURRENT_HEIGHT == '0'
  if IsZero then
    vim.cmd 'set cmdheight=1'
  else
    vim.cmd 'set cmdheight=0'
  end
end, {})