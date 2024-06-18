local M = {}
M.tokyonight = {
  {
    'folke/tokyonight.nvim',
    config = function()
      local status_ok, tokyonight = pcall(require, 'tokyonight')
      if not status_ok then
        return
      end
      tokyonight.setup {
        style = 'night', -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        light_style = 'day', -- The theme is used when the background is set to light
        transparent = true, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          sidebars = 'dark', -- style for sidebars, see below
          floats = 'dark', -- style for floating windows
        },
        -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        sidebars = { 'qf', 'help' },
        -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        day_brightness = 1,
        -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead.
        -- Should work with the standard **StatusLine** and **LuaLine**.
        hide_inactive_statusline = false,
        -- dims inactive windows
        dim_inactive = false,
        -- When `true`, section headers in the lualine theme will be bold
        lualine_bold = false,
      }

      local colorscheme = 'tokyonight'

      local this_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
      if not this_ok then
        return
      end
    end,
  },
}
M.dracula = {
  'Mofiqul/dracula.nvim',
  config = function()
    require('lualine').setup {
      options = {
        -- ...
        theme = 'dracula-nvim',
        -- ...
      },
    }
  end,
}

return M.tokyonight
