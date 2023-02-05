local Popup = require("nui.popup")
local event = require("nui.utils.autocmd").event

local popup = Popup({
  enter = true,
  focusable = true,
  border = {
    style = "rounded",
  },
  position = "0",
  size = {
    width = "80%",
    height = "1",
  },
})

-- mount/open the component
popup:mount()

-- unmount component when cursor leaves buffer
popup:on(event.BufLeave, function()
  popup:unmount()
end)
popup:map("n", "q", function()
  vim.cmd('bd')
end, {})

-- set content
vim.api.nvim_buf_set_lines(popup.bufnr, 0, 2, false, { "Hello World" })
