return function(use)
  -- use {
  --   'puremourning/vimspector',
  -- }
  use {
    "mfussenegger/nvim-dap",
    event = "BufWinEnter",
    opts = true,
  }
  -- debug lang
  use {
    'jbyuki/one-small-step-for-vimkind',
    event = "BufWinEnter",
    opts = true,
    config = 'require("configs.dap")'
  }
  use {
    "rcarriga/nvim-dap-ui",
    event = "BufWinEnter",
    requires = "mfussenegger/nvim-dap",
    opts = true,
    config = function()
      -- use nerdfont for this setup
      require("dapui").setup()
    end,
  }
end
