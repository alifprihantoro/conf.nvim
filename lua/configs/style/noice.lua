require("noice").setup({
  lsp = {
    progress = {
      enabled = false,
    },
  },
  popupmenu = {
    enabled = true, -- enables the Noice popupmenu UI
    ---@type 'nui'|'cmp'
    backend = "cmp", -- backend to use to show regular cmdline completions
  },
})
