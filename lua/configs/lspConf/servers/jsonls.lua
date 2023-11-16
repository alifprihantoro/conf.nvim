local capability = require 'configs.lspConf.utils.capability'
local root_path = '/data/data/com.termux/files/home/.config/nvim/schema/json/'

return {
  capabilities = capability,
  settings = {
    json = {
      schemas = {
        {
          description = 'package json',
          fileMatch = { 'package.json' },
          url = root_path .. 'package.json',
        },
        {
          description = 'TypeScript compiler configuration file',
          fileMatch = { 'tsconfig.json', 'tsconfig.*.json' },
          url = root_path .. 'tsconfig.json',
        },
        {
          description = 'Lerna config',
          fileMatch = { 'lerna.json' },
          url = root_path .. 'lerna.json',
        },
        {
          description = 'Babel configuration',
          fileMatch = { '.babelrc.json', '.babelrc', 'babel.config.json' },
          url = root_path .. 'lerna.json',
        },
        {
          description = 'ESLint config',
          fileMatch = { '.eslintrc.json', '.eslintrc' },
          url = root_path .. 'eslintrc.json',
        },
        -- {
        --   description = 'Bucklescript config',
        --   fileMatch = {'bsconfig.json'},
        --   url = root_path..'build-schema.json'
        -- },
        {
          description = 'Prettier config',
          fileMatch = { '.prettierrc', '.prettierrc.json', 'prettier.config.json' },
          url = root_path .. 'prettierrc.json',
        },
        {
          description = 'Vercel Now config',
          fileMatch = { 'now.json' },
          url = root_path .. 'now.json',
        },
        {
          description = 'Stylelint config',
          fileMatch = { '.stylelintrc', '.stylelintrc.json', 'stylelint.config.json' },
          url = root_path .. 'stylelintrc.json',
        },
      },
      validate = { enable = true },
    },
  },
}
