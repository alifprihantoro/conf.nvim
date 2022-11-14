local cmd = vim.api.nvim_create_user_command
-- command
cmd('Hel','echo "hello world!"',{})
cmd("De","cd ~/",{})
cmd("Dc","cd ~/.myconfig",{})
-- cd now",{})
cmd("Cdn","cd %:h",{})
-- cd before dir now",{})
cmd("Cb","cd ..",{})
-- close all buffer without current",{})
cmd("Bda","%bdelete|edit#|bdelete#",{})
-- cd git root",{})
cmd("Cdg","exec 'cd' fnameescape(fnamemodify(finddir('.git', escape(expand('%:p:h'), ' ') . ';'), ':h'))",{})
-- variable git",{})
cmd("LetGit","let DIRGIT=fnameescape(fnamemodify(finddir('.git', escape(expand('%:p:h'), ' ') . ';'), ':h'))",{})
-- vim plug go to",{})
cmd("Gplugvim","call Goplugvim()",{})
cmd("Help","exe 'tabnew '.nvimplug.'/nvim-conf/help/home.md'",{})
-- plugin on wiki",{})
cmd("W1","e ~/wiki/development/index.wiki",{})

-- html on js literal
cmd("Htl","%s/\\(=\\|return\\) `/\\1 html`/g",{})
