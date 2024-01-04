require('neo-tree').setup {
  close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
  sort_case_insensitive = false, -- used when sorting files and directories in the tree
  default_component_configs = {
    git_status = {
      symbols = {
        added = '',
        modified = '',
        deleted = '',
        renamed = '',
      },
    },
  },
  use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
  window = {
    mappings = {
      ['A'] = 'git_add_all',
      ['gu'] = 'git_unstage_file',
      ['ga'] = 'git_add_file',
      ['gr'] = 'git_revert_file',
      ['gc'] = 'git_commit',
      ['gp'] = 'git_push',
      ['Z'] = 'expand_all_nodes',
      ['Y'] = 'copy_path_name_txt',
      ['<c-y>'] = 'copy_full_path_txt',
      ['<c-p>'] = 'print_full_path',
      ['b'] = 'goToParent',
      ['B'] = 'delete_visual',
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
      end,
      goToParent = function(state)
        local node = state.tree:get_node()
        require('neo-tree.ui.renderer').focus_node(state, node:get_parent_id())
      end,
    },
    filtered_items = {
      hide_dotfiles = false,
      hide_by_name = {
        '.git',
      },
    },
    group_empty_dirs = true, -- when true, empty folders will be grouped together
    window = {
      mappings = {
        ['u'] = 'navigate_up',
        ['<leader><CR>'] = 'set_root',
      },
    },
  },
  buffers = {
    window = {
      mappings = {
        ['u'] = 'navigate_up',
        ['<leader><CR>'] = 'set_root',
      },
    },
  },
  events = {
    {
      event = 'file_renamed',
      handler = function(args)
        -- fix references to file
        print(args.source, ' renamed to ', args.destination)
      end,
    },
    {
      event = 'file_moved',
      handler = function(args)
        -- fix references to file
        print(args.source, ' moved to ', args.destination)
      end,
    },
  },
  event_handlers = {
    {
      event = 'neo_tree_buffer_enter',
      handler = function()
        vim.cmd [[
        hi NeoTreeTitleBar guifg=white
        hi NeoTreeDirectoryName guifg=#80a0ff
        hi NeoTreeDirectoryIcon guifg=#80a0ff
        ]]
      end,
    },
    {
      event = 'file_opened',
      handler = function()
        require('neo-tree.command').execute { action = 'close' }
      end,
    },
  },
}