return {
  'hrsh7th/nvim-cmp',
  version = false, -- last release is way too old
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'tamago324/cmp-zsh',
    'Shougo/deol.nvim',
    --   "jcha0713/cmp-tw2css",
    'dcampos/cmp-emmet-vim',
    'mattn/emmet-vim',
    'hrsh7th/cmp-nvim-lua',
    'saadparwaiz1/cmp_luasnip',
    'dcampos/cmp-snippy',
    {
      'L3MON4D3/LuaSnip',
      -- follow latest release.
      version = 'v2.*', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!).
      build = 'make install_jsregexp',
      config = function()
        -- require 'muryp-completion.configs.snippets'
      end,
      opts = {
        history = true,
        delete_check_events = 'TextChanged',
      },
      dependencies = {
        'onsails/lspkind.nvim',
        {
          'muryp/nvim-muryp-snippet-collection',
          -- 'rafamadriz/friendly-snippets',
          config = function()
            require 'configs.editor.cmp.snippets'
          end,
        },
      },
    },
  },
}