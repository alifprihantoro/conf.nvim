--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
local lua = require('configs.lsp.lspConf.servers.lua')
local lsp = require('lspconfig')

-- lang, core
lsp.sumneko_lua.setup(lua) -- lua
lsp.tsserver.setup {} -- js typescript
lsp.html.setup { capabilities = capabilities }
lsp.jsonls.setup {
  capabilities = capabilities,
  settings = {
    json = {
      schemas = {
        {
          description = 'TypeScript compiler configuration file',
          fileMatch = { 'tsconfig.json', 'tsconfig.*.json' },
          url = 'http://json.schemastore.org/tsconfig'
        },
        {
          description = 'Package json for node',
          fileMatch = { 'package.json' },
          url = 'https://raw.githubusercontent.com/SchemaStore/schemastore/master/src/schemas/json/package.json'
        },
        {
          description = 'Lerna config',
          fileMatch = { 'lerna.json' },
          url = 'http://json.schemastore.org/lerna'
        },
        {
          description = 'Babel configuration',
          fileMatch = { '.babelrc.json', '.babelrc', 'babel.config.json' },
          url = 'http://json.schemastore.org/lerna'
        },
        {
          description = 'ESLint config',
          fileMatch = { '.eslintrc.json', '.eslintrc' },
          url = 'http://json.schemastore.org/eslintrc'
        },
        {
          description = 'Bucklescript config',
          fileMatch = { 'bsconfig.json' },
          url = 'https://bucklescript.github.io/bucklescript/docson/build-schema.json'
        },
        {
          description = 'Prettier config',
          fileMatch = { '.prettierrc', '.prettierrc.json', 'prettier.config.json' },
          url = 'http://json.schemastore.org/prettierrc'
        },
        {
          description = 'Vercel Now config',
          fileMatch = { 'now.json' },
          url = 'http://json.schemastore.org/now'
        },
        {
          description = 'Stylelint config',
          fileMatch = { '.stylelintrc', '.stylelintrc.json', 'stylelint.config.json' },
          url = 'http://json.schemastore.org/stylelintrc'
        },
      }
    },
  }
}
lsp.cssls.setup {
  capabilities = capabilities,
  filetype = { "css", "scss", "less", "sass" },
  {
    css = {
      validate = true
    },
    less = {
      validate = true
    },
    scss = {
      validate = true
    },
    sass = {
      validate = true
    },
  }
}
lsp.cssmodules_ls.setup {}
lsp.eslint.setup {}
require('lspconfig').yamlls.setup {
  settings = {
    yaml = {
      schemas = {
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
        -- ["../path/relative/to/file.yml"] = "/.github/workflows/*",
        -- ["/path/from/root/of/project"] = "/.github/workflows/*",
      },
    },
  }
}
lsp.bashls.setup {
  capabilities = capabilities,
}
lsp.pyright.setup {}
lsp.rust_analyzer.setup({
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self",
      },
      cargo = {
        buildScripts = {
          enable = true,
        },
      },
      procMacro = {
        enable = true
      },
    }
  }
})
lsp.taplo.setup {
  cmd = { "taplo", "lsp", "stdio" }
}
-- framework
lsp.astro.setup {} -- astro
