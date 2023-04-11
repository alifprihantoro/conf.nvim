vim.notify = require("notify")

-- integration with telescope
require('notify').setup
{
  background_colour = "#000000",
  level = 1,
  minimum_width = 1,
  -- render = "compact",
  stages = "static",
  timeout = 500,
}
