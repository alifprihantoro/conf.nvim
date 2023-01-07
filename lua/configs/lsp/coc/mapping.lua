local key = vim.keymap.set
local cmd = vim.api.nvim_create_user_command
local opts = { silent = true, expr = true, replace_keycodes = false }
local opts2 = { silent = true }
return function()
  -- Prettier
  cmd('Format', 'CocCommand prettier.formatFile', {})
  -- navigate completion/snippet
  key("i", "<c-j>", [[coc#pum#visible() ? coc#pum#next(1) : "\<down>"]], opts)
  key("i", "<c-k>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<up>"]], opts)
  key("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
  -- scroll info
  key("i", "<C-f>", [[coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"]], opts)
  key("i", "<C-b>", [[coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"]], opts)
  key("n", "<C-f>", [[coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"]], opts)
  key("n", "<C-b>", [[coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"]], opts)

  -- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
  key("n", "[g", "<Plug>(coc-diagnostic-prev)", opts2)
  key("n", "]g", "<Plug>(coc-diagnostic-next)", opts2)
  -- GoTo code navigation.
  key("n", "<leader>td", "<Plug>(coc-definition)", opts2)
  key("n", "<leader>ty", "<Plug>(coc-type-definition)", opts2)
  key("n", "<leader>ti", "<Plug>(coc-fix-current)", opts2)
  key("n", "<leader>tr", "<Plug>(coc-references)", opts2)
  key("n", "<leader>tg", "<Plug>(coc-definition)", opts2)
  key("n", "<leader>tn", "<Plug>(coc-rename)", opts2)
  -- Use K to show documentation in preview window.
  key("n", "K", '<CMD>lua _G.show_docs()<CR>', opts2)

  -- multi cursor
  -- https://github.com/neoclide/coc.nvim/wiki/Multiple-cursors-support#start-multiple-cursors-session
  key("n", "<C-c>", "<Plug>(coc-cursors-position)", opts2)
  key("n", "<C-d>", "<Plug>(coc-cursors-word)", opts2)
  key("v", "<C-d>", "<Plug>(coc-cursors-range)", opts2)
  -- vim.cmd "let g:coc_snippet_next = '<Tab>'"
  vim.g.coc_snippet_next = '<Tab>'
end
