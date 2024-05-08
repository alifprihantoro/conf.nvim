local formatter_list = {
  lua = { 'stylua' },
  fish = { 'fish_indent' },
  sh = { 'shfmt' },
  astro = { 'astro' },
}
local ignore_filetypes = {}

local addFormatter = function(listLang, formatter, isIgnore)
  for _, val in pairs(listLang) do
    formatter_list[val] = formatter
    if isIgnore then
      table.insert(ignore_filetypes, val)
    end
  end
end

addFormatter({
  'javascript',
  'javascriptreact',
  'typescript',
  'typescriptreact',
  'typescriptreact',
}, { 'prettierd', 'eslint_d' }, true)
addFormatter({ 'html', 'css', 'scss', 'markdown' }, { 'prettierd' }, true)

_G.HELR = ignore_filetypes
return {
  'stevearc/conform.nvim',
  lazy = true,
  event = 'InsertEnter',
  cmd = 'ConformInfo',
  keys = {
    {
      '<c-f>',
      function()
        require('conform').format { timeout_ms = 3000 }
      end,
      mode = { 'n', 'v' },
      desc = 'Format Injected Langs',
    },
  },
  opts = function()
    ---@class ConformOpts
    local opts = {
      -- LazyVim will use these options when formatting with the conform.nvim formatter
      format = {
        timeout_ms = 3000,
        async = false,
        quiet = true,
        lsp_fallback = true, -- not recommended to change
      },
      ---@type table<string, conform.FormatterUnit[]>
      formatters_by_ft = formatter_list,
      -- The options you set here will be merged with the builtin formatters.
      -- You can also define any custom formatters here.
      ---@type table<string, conform.FormatterConfigOverride|fun(bufnr: integer): nil|conform.FormatterConfigOverride>
      formatters = {
        shfmt = {
          prepend_args = { '-i', '2', '-ci' },
        },

        prettierd = {
          cwd = nil,
        },
        astro = {
          command = 'astrofm',
          args = { '$FILENAME' },
        },
      },
      format_on_save = function(bufnr)
        -- Disable autoformat on certain filetypes
        if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
          return
        end
        return { timeout_ms = 500, lsp_fallback = true }
      end,
    }
    return opts
  end,
  init = function()
    -- If you want the formatexpr, here is the place to set it
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
