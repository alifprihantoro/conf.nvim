require 'configs.basic'
require 'utils.importFolder'
_G.IMPORT_FOLDER { include = 'utils', exlude = { 'importFolder' } }

vim.g.mapleader = ' '
require 'configs.lazy'
require 'autoCmd'
require 'cmd'