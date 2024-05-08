_G.LspInstallServer = function(opts)
  local list_npm = {
    'vscode-langservers-extracted', -- html, json, css
    'typescript',                   -- ts compiler
    'typescript-language-server',   -- ts,js,jsx,tsx
    'cssmodules-language-server',   -- css module
    '@astrojs/language-server',     -- astro
    'yaml-language-server',         -- yaml
    'bash-language-server',         -- bash
    'pyright',                      -- python
    -- '@tailwindcss/language-server@0.0.7', -- tailwind
    '@tailwindcss/language-server', -- tailwind
    '@mdx-js/language-server',
    'prettier', -- formatter
  }
  local pnpmInstall = ' '
  for _, v in pairs(list_npm) do
    pnpmInstall = pnpmInstall .. ' ' .. v
  end
  vim.cmd('term pnpm install -g' .. pnpmInstall)
  if opts.termux == true then
    -- this opts is used to termux (for linux/mac/windows have different installed or dir)
    local cli = {
      'pkg install lua-language-server -y', -- lua
      -- NOTE: rust
      'git clone --depth=1 https://github.com/rust-lang/rust-analyzer.git',
      'cd rust-analyzer',
      'cargo xtask install --server',
      'chmod 777 ~/../usr/bin/rust-analyzer',
      'mv ~/../usr/bin/rust-analyzer ~/../usr/bin/rust-analyzer',
      -- end rust installed
      -- NOTE: toml
      'cargo install --features lsp --locked taplo-cli',
      'chmod 777 ~/../usr/bin/taplo',
      'mv ~/../usr/bin/taplo ~/../usr/bin/taplo',
      -- end toml
      -- NOTE:PHP
      [[curl -Lo phpactor.phar https://github.com/phpactor/phpactor/releases/latest/download/phpactor.phar]],
      [[chmod a+x phpactor.phar]],
      [[mv phpactor.phar ~/../usr/bin/phpactor]],
      -- end php
    }
    for _, v in pairs(cli) do
      vim.cmd('!' .. v)
    end
  end
end