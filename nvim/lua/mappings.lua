local M = {}

M.general = {
  n = {
    -- close buffer
    ['<leader>x'] = { '<cmd> bd <CR>', 'Close buffer' },
  },
}

M.filetree = {
  n = {
    -- toggle
    ['<C-n>'] = { '<cmd> Neotree toggle<CR>', 'Toggle nvimtree' },

    -- focus
    ['<leader>e'] = { '<cmd> Neotree focus<CR>', 'Open file browser' },
  },
}

M.harpoon = {
  n = {
    ['<leader>hh'] = { ':lua require("harpoon.ui").toggle_quick_menu()<CR>', 'Harpoon file' },
    ['<leader>ha'] = { ':lua require("harpoon.mark").add_file()<CR>', 'Harpoon file' },
    ['<leader>hn'] = { ':lua require("harpoon.ui").nav_next()<CR>', 'Navigate to next harpooned file' },
    ['<leader>hb'] = { ':lua require("harpoon.ui").nav_prev()<CR>', 'Navigate to previous harpooned file' },
  },
}

M.refactoring = {
  x = {
    -- Extract
    ['<leader>re'] = { ':Refactor extract ', 'Extract' },
    -- Extract to file
    ['<leader>rf'] = { ':Refactor extract_to_file ', 'Extract to file' },
    -- Extract variable
    ['<leader>rv'] = { ':Refactor extract_var ', 'Extract variable' },
  },
  n = {
    -- Inline variable
    ['<leader>ri'] = { ':Refactor inline_var', 'Inline variable' },
    -- Inline function
    ['<leader>rI'] = { ':Refactor inline_func', 'Inline function' },
    -- Extract block
    ['<leader>rb'] = { ':Refactor extract_block', 'Extract block' },
    -- Extract block to file
    ['<leader>rbf'] = { ':Refactor extract_block_to_file', 'Extract block to file' },
  },
}

M.bufferline = {
  n = {
    -- Cycle to the next buffer
    ['<Tab>'] = { ':BufferLineCycleNext<CR>', 'Next buffer' },
    -- Cycle to the previous buffer
    ['<S-Tab>'] = { ':BufferLineCyclePrev<CR>', 'Previous buffer' },
  },
}

M.telescope = {
  n = {
    -- find
    ['<leader>ff'] = { '<cmd> Telescope find_files <CR>', 'Find files' },
    ['<leader>fa'] = { '<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>', 'Find all' },
    ['<leader>fb'] = { '<cmd> Telescope buffers <CR>', 'Find buffers' },
    ['<leader>fh'] = { '<cmd> Telescope help_tags <CR>', 'Help page' },
    ['<leader>fo'] = { '<cmd> Telescope oldfiles <CR>', 'Find oldfiles' },
    ['<leader>fz'] = { '<cmd> Telescope current_buffer_fuzzy_find <CR>', 'Find in current buffer' },
    ['<leader>fe'] = { '<cmd> Telescope file_browser<CR>', 'Open file browser' },
    -- git
    ['<leader>cm'] = { '<cmd> Telescope git_commits <CR>', 'Git commits' },
    ['<leader>gt'] = { '<cmd> Telescope git_status <CR>', 'Git status' },

    -- pick a hidden term
    ['<leader>pt'] = { '<cmd> Telescope terms <CR>', 'Pick hidden term' },

    -- theme switcher
    ['<leader>th'] = { '<cmd> Telescope themes <CR>', 'Nvchad themes' },

    ['<leader>ma'] = { '<cmd> Telescope marks <CR>', 'telescope bookmarks' },
    ['<leader>fw'] = { '<cmd> Telescope live_grep <CR>', 'Live Grep' },
  },
}

M.lazygit = {
  n = {
    -- Lazygit
    ['<leader>gg'] = { '<cmd> LazyGit <CR>', 'LazyGit' },
  },
}

return M
