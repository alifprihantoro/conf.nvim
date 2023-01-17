TODO:
- [x] prettier
- [x] js react coc config deep
- [x] wichmap
- [x] telescope :
  - [x] command list
- [x] tmux :
   - [x] git versioning :
- [ ] rest client :
  - [x] asdflj
- [ ] create docs and help
- [x] :TSInstall
- [x] coc with lsp :
  - [x] coc enable if on class
- [x] git :
  - [x] gsp
  - [x] gsv
- [x] opts :
  - [x] device
  - [x] workspace :
    - [x] grub :
      - [x] child
    - [x] exam : project : muryp
  - [x] git :
    - [x] git cli or ssh
    - [x] ssh folder
    - [x] width heigh tmux
    - [x] ssh dir
  - [x] telescope :
    - [x] git change header
    - [x] update gh issue
  - [x] lsp :
    - [x] autocmd config ext
    - [x] snippy file ext
    - [x] json ls root vimrc
- [x] plug install :
  - [x] lsp :
    - [x] https://github.com/hrsh7th/cmp-cmdline
    - [x] https://github.com/dmitmel/cmp-cmdline-history
    - [x] hover
- [x] snippet :
  - [x] bash
  - [x] jsx
- hilight :
  - error color none, bg red (bold,underline)
  - 
- https://youtu.be/wUd_DdfoKag
folder :
- plugin :
  - lsp
  - styling
  - custom :
    - git
- config :
  - lsp :
    - coc :
    - lsp-conf :
      - init
      - plugins :
        - [name lang]
  - filesystem :
    - telescope
    - nvimtree/etc
    - git
  - style :
    - tresitter
    - theme
  - other :
    - vimwiki
- mapping

## Plugin
- packer.nvim
- coc.vim :
  - coc-json
	- coc-css
	- coc-cssmodules
	- coc-emmet
	- coc-eslint
	- coc-prettier
	- coc-snippets
	- @yaegassy/coc-tailwindcss3
	- coc-tsserver
	- coc-vimlsp
- lualine.nvim
- nvim-treesitter
- nvim-web-devicons
- nvim-autopairs
- nvim-ts-autotag
- gitsigns.nvim
- git.nvim
- which-key.nvim
- nvim-comment
- nvim-tree.lua
- embark-theme/vim
- vimwiki
- indent-blankline.nvim
- telescope.nvim
- plenary nvim

```lua
-- disable auto complete in comment
require 'cmp'.setup({
  enabled = function()
    local lnum, col = vim.fn.line('.'), math.min(vim.fn.col('.'), #vim.fn.getline('.'))
    for _, syn_id in ipairs(vim.fn.synstack(lnum, col)) do
      syn_id = vim.fn.synIDtrans(syn_id) -- Resolve :highlight links
      print(vim.fn.synIDattr(syn_id, 'name'))
      if vim.fn.synIDattr(syn_id, 'name') == 'Comment' then
        return false
      end
    end
    return true
  end,
})
```

NOTE:
- https://colorffy.com/color-scheme-generator
- note use for now :
  - use 'alvan/vim-closetag'
  - use 'mg979/vim-visual-multi' -- multi select
  - use 'jxnblk/vim-mdx-js'
- :let b:coc_suggest_disable = 1
- vim.api.nvim_create_user_command

[Docs](docs/README.md)
