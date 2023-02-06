require("noice").setup({
  lsp = {
    hover = {
      enabled = false
    },
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
