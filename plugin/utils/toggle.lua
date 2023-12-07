_G.toggle = {
  lineNum = function()
    local cek = vim.wo.number
    if cek then
      cek = false
      return
    end
    cek = true
  end,
  wrap = function()
    local cek = vim.opt.wrap
    if cek then
      cek = false
      return
    end
    cek = true
  end,
  relativeNum = function()
    local cek = vim.wo.relativenumber
    if cek then
      cek = false
      return
    end
    cek = true
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