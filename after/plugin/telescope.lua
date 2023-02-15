require("which-key").register({
  f = {
    name = "TELESCOPE",
    l    = { ":Telescope<CR>", "LIST_ALL" },
    f    = { ":Telescope find_files<CR>", "FIND_FILE" },
    g    = { ":Telescope live_grep<CR>", "LIVE_GREP" },
    r    = { ":Telescope grep_string<CR>", "GREP_STRING" },
    b    = { ":Telescope buffers<CR>", "BUFFER" },
    h    = { ":Telescope help_tags<CR>", "HELP" },
    c    = { ":Telescope commands<CR>", "COMMAND" },
    w    = { ":Telescope work_space<CR>", "WORK_SPACE" },
  },
}, { prefix = "<leader>" })
