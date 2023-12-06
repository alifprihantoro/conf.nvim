return {
  {
    'windwp/nvim-ts-autotag',
    event = 'InsertEnter',
    config = function()
      require 'configs.lang.web.ts-autotag'
    end,
  }
}