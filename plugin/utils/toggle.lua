local opts = vim.wo
_G.toggle = {
  lineNum = function()
    if opts.number then
      opts.number = false
      return
    end
    opts.number = true
  end,
  wrap = function()
    if opts.wrap then
      opts.wrap = false
      return
    end
    opts.wrap = true
  end,
  relativeNum = function()
    if opts.relativenumber then
      opts.relativenumber = false
      return
    end
    opts.relativenumber = true
  end,
  diagnostic = function()
    if _G.Diagnostic then
      vim.diagnostic.disable()
      _G.Diagnostic = false
      return
    end
    vim.diagnostic.enable()
    _G.Diagnostic = true
  end
}