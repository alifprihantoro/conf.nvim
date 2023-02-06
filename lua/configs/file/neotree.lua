require("neo-tree").setup({
  close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
  sort_case_insensitive = false, -- used when sorting files and directories in the tree
  default_component_configs = {
    indent = {
      indent_size = 2,
      padding = 1, -- extra padding on left hand side
      -- indent guides
      with_markers = true,
      indent_marker = "│",
      last_indent_marker = "└",
      highlight = "NeoTreeIndentMarker",
      -- expander config, needed for nesting files
      with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
      expander_collapsed = "",
      expander_expanded = "",
      expander_highlight = "NeoTreeExpander",
    },
  },
  window = {
    mappings = {
      ["Z"] = "expand_all_nodes",
      ["Y"] = "copy_path_name_txt",
      ["<c-y>"] = "copy_full_path_txt",
      ["<c-p>"] = "print_full_path",
      ["<"] = "noop",
      [">"] = "noop",
      ["w"] = "noop",
    },
  },
  nesting_rules = {},
  filesystem = {
    commands = {
      print_full_path = function(state)
        local node = state.tree:get_node()
        print(node.path)
      end,
      copy_full_path_txt = function(state)
        local node = state.tree:get_node()
        local ARG = node.path
        local cmd = [[let @+="]] .. ARG .. '"'
        vim.cmd(cmd)
        print('copy ' .. ARG)
      end,
      copy_path_name_txt = function(state)
        local node = state.tree:get_node()
        local ARG = node.name
        local cmd = [[let @+="]] .. ARG .. '"'
        vim.cmd(cmd)
        print('copy ' .. ARG)
      end
    },
    filtered_items = {
      hide_by_name = {
        --"node_modules"
      },
      hide_by_pattern = { -- uses glob style patterns
        --"*.meta",
        --"*/src/*/tsconfig.json",
      },
      always_show = { -- remains visible even if other settings would normally hide it
        --".gitignored",
      },
      never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
        --".DS_Store",
        --"thumbs.db"
      },
      never_show_by_pattern = { -- uses glob style patterns
        --".null-ls_*",
      },
    },
    group_empty_dirs = true, -- when true, empty folders will be grouped together
    window = {
      mappings = {
        ["u"] = "navigate_up",
        ["<leader><CR>"] = "set_root",
      }
    }
  },
  buffers = {
    window = {
      mappings = {
        ["u"] = "navigate_up",
        ["<leader><CR>"] = "set_root",
      }
    },
  },
  event_handlers = {
    {
      event = "neo_tree_buffer_enter",
      handler = function()
        vim.cmd [[
        hi NeoTreeTitleBar guifg=white
        hi NeoTreeDirectoryName guifg=#80a0ff
        hi NeoTreeDirectoryIcon guifg=#80a0ff
        ]]
      end
    },
  },
})
