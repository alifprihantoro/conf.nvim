local capability   = require('configs.lsp.lspConf.utils.capability')

return {
  capabilities = capability,
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
