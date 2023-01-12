return function(opts)
  local list_npm = {
    'vscode-langservers-extracted', -- html, json, css
    'typescript', -- ts compiler
    'typescript-language-server', -- ts,js
    'cssmodules-language-server', -- css module
    '@astrojs/language-server', -- astro
    'yaml-language-server', -- yaml
    'bash-language-server', -- bash
    'pyright', -- python
  }
  for _, v in pairs(list_npm) do
    vim.cmd('!npm install -g ' .. v)
  end
  if opts.cli == true then
    -- this opts is used to termux (for linux/mac/windows have different installed or dir)
    local cli = {
      'pkg install lua-language-server', -- lua
      -- rust start
      'git clone https://github.com/rust-lang/rust-analyzer.git',
      'cd rust-analyzer',
      'cargo xtask install --server',
      [[echo "#\!/bin/bash\n~/.cargo/bin/rust-analyzer" > ~/../usr/bin/rust-analyzer]],
      'chmod 777 ~/../usr/bin/rust-analyzer',
      -- end rust installed
      "cargo install --features lsp --locked taplo-cli", -- toml
      [[echo "#\!/bin/bash\n~/.cargo/bin/taplo" > ~/../usr/bin/taplo]],
      'chmod 777 ~/../usr/bin/taplo',
    }
    for _, v in pairs(cli) do
      vim.cmd('!' .. v)
    end
  end
end
