local previewers = require("telescope.previewers")
local Job = require("plenary.job")

local new_maker = function(filepath, bufnr, opts)
  filepath = vim.fn.expand(filepath)
  Job:new({
    command = "file",
    args = { "--mime-type", "-b", filepath },
    on_exit = function(j)
      local mime_type = j:result()[1]
      local include = { 'text', 'json' }
      for _, value in ipairs(include) do
        if mime_type:match(value) then
          return previewers.buffer_previewer_maker(filepath, bufnr, opts)
        end
      end
      -- maybe we want to write something to the buffer here
      vim.schedule(function()
        require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "cannot be previewed")
      end)
    end
  }):sync()
end

return new_maker
