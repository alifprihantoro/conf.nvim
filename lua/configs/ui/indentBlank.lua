local opts = {}
local opts_color = {
  color_transparency = 0.08,
}
require('ibl').setup(require('indent-rainbowline').make_opts(opts, opts_color))
