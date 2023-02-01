return function(use)
  -- git cmd, list, gh cli
  use {
    'muryp/nvim-muryp-git',
    config = function()
      require('nvim-muryp-git').setup {}
    end
  }
end
