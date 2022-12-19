-- multi cursor
-- https://github.com/neoclide/coc.nvim/wiki/Multiple-cursors-support#start-multiple-cursors-session
key("n", "<C-c>", "<Plug>(coc-cursors-position)", opts2)
key("n", "<C-d>", "<Plug>(coc-cursors-word)", opts2)
key("v", "<C-d>", "<Plug>(coc-cursors-range)", opts2)
