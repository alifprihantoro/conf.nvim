local mappingWiki = require('configs.editor.wiki.mapping')
vim.api.nvim_create_autocmd(
  { "Vimenter", "BufNewFile", "BufRead", "BufWinEnter" },
  { pattern = "*.md", callback = mappingWiki }
)
