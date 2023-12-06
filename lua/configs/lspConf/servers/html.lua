return {
  filetypes = { 'html', 'javascript', 'typescript' },
  init_options = {
    configurationSection = { 'html', 'javascript', 'typescript', 'css' },
    embeddedLanguages = {
      css = true,
      javascript = true,
      typescript = true,
    },
    provideFormatter = false,
  },
}