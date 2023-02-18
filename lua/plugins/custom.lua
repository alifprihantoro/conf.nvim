return function(use)
  -- git cmd, list, gh cli
  use {
    'muryp/nvim-muryp-git',
    event = "BufWinEnter",
    opts = true,
    config = function()
      require('nvim-muryp-git').setup {}
    end
  }
  use 'muryp/nvim-muryp-snippet-collection'
end
