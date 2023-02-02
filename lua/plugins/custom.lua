return {
  -- git cmd, list, gh cli
  {
    'muryp/nvim-muryp-git',
    config = function()
      require('nvim-muryp-git').setup {}
    end
  }
  , 'muryp/nvim-muryp-snippet-collection'
  , {
    'muryp/vimwiki',
    lazy = true,
    ft = { "markdown" },
    config = function() require('configs.editor.wiki.after') end
  }
}
