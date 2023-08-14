local status, lualine = pcall(require, "lualine")
if (not status) then return end
local navic = require("nvim-navic")
-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  main   = '#03589c',
  cyan   = '#391e9c',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal   = {
    a = { fg = colors.black, bg = colors.main },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert   = { a = { fg = colors.black, bg = colors.blue } },
  visual   = { a = { fg = colors.black, bg = colors.cyan } },
  replace  = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

lualine.setup {
  options = {
    theme                = bubbles_theme,
    component_separators = '|',
    section_separators   = { left = '', right = '' },
  },
  winbar = {
    lualine_c = {
      {
        function()
          return navic.get_location()
        end,
        cond = function()
          return navic.is_available()
        end
      },
    }
  },
  sections = {
    lualine_a = {
      {
        'mode',
        separator     = { left = '' },
        right_padding = 2
      },
    },
    lualine_b = { { 'filename', path = 1 } },
    lualine_x = {},
    lualine_y = { 'diff', 'diagnostics', 'filetype', },
    lualine_z = {
      {
        'branch',
        separator    = { right = '' },
        left_padding = 2
      },
    },
  },
  tabline = {},
  extensions = {},
}
local cmd = vim.api.nvim_create_user_command
cmd('LualineToggle', function()
  if _G.LUALINE_DISABLE == false then
    lualine.hide({})
    _G.LUALINE_DISABLE = true
  else
    lualine.hide({ unhide = true })
    _G.LUALINE_DISABLE = false
  end
end, {})
