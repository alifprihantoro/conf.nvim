local previewers = require("telescope.previewers")
local Job = require("plenary.job")

local new_maker = function(filepath, bufnr, opts)
  filepath = vim.fn.expand(filepath)
  Job:new({
    command = "file",
    args = { "--mime-type", "-b", filepath },
    on_exit = function(j)
      local mime_type = j:result()[1]
      if mime_type:match('text') or mime_type:match('json') then
        previewers.buffer_previewer_maker(filepath, bufnr, opts)
      elseif mime_type:match('empty') then
        vim.schedule(function()
          require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "emty")
        end)
      else
        -- maybe we want to write something to the buffer here
        vim.schedule(function()
          require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "cannot be previewed")
        end)
      end
    end
  }):sync()
end

return new_maker
