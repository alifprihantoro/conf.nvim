local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end
ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "php",
    "yaml",
    "swift",
    "css",
    "html",
    "lua",
    "javascript",
    "jsdoc",
    "json",
    "typescript",
    "astro",
    "bash",
    "rust",
    "python",
    "markdown",
    "markdown_inline",
    "go",
    "regex",
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
  --   config = {
  --     typescript = {
  --       __default = '// %s',
  --       jsx_element = '{/* %s */}',
  --       jsx_fragment = '{/* %s */}',
  --       jsx_attribute = '// %s',
  --       comment = '// %s'
  --     },
  --     javascript = {
  --       __default = '// %s',
  --       jsx_element = '{/* %s */}',
  --       jsx_fragment = '{/* %s */}',
  --       jsx_attribute = '// %s',
  --       comment = '// %s'
  --     }
  --   }
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
