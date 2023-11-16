return {
  -- Statusline
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require 'configs.style.lualine'
    end,
    cmd = 'LualineToggle',
  },
  {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufRead',
    opts = true,
    config = function()
      require 'configs.style.treesitter'
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependencies = 'nvim-treesitter',
  },
  {
    'folke/tokyonight.nvim',
    config = function()
      require 'configs.style.tokyonight'
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufWinEnter',
    opts = true,
    config = function()
      require 'configs.style.indentBlank'
    end,
  },
  -- lazy.nvim
  {
    'folke/noice.nvim',
    event = 'BufRead',
    opts = {
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
        hover = {
          enabled = true,
        },
        progress = {
          enabled = false,
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false,           -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false,       -- add a border to hover docs and signature help
      },
      popupmenu = {
        enabled = true,  -- enables the Noice popupmenu UI
        ---@type 'nui'|'cmp'
        backend = 'cmp', -- backend to use to show regular cmdline completions
      },
    },
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },
  {
    'rcarriga/nvim-notify',
    -- event = 'BufRead',
    -- opts = true,
    config = function()
      require 'configs.style.notify'
    end,
  },
}