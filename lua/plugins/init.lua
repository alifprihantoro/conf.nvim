return {
  require 'plugins.editor',
  require 'plugins.editor.cmp',
  require 'plugins.editor.lsp',
  require 'plugins.editor.formatter',
  require 'plugins.editor.todoComment',
  require 'plugins.editor.db',
  require 'plugins.file',
  require 'plugins.file.neotree',
  require 'plugins.editor.treesitter',
  require 'plugins.ui',
  require 'plugins.ai',
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && pnpm install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },
}
