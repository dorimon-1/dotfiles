local M = {}

M.general = {
  n = {
    -- close buffer
    { '<leader>x', '<cmd> bd <CR>', desc = 'Close buffer' },
  },
}

M.filetree = {
  n = {
    -- toggle
    { '<C-n>',     '<cmd> Neotree toggle<CR>', desc = 'Toggle nvimtree' },

    -- focus
    { '<leader>e', '<cmd> Neotree focus<CR>',  desc = 'Open file browser' },
  },
}

M.dap = {
  n = {
    { '<leader>dg',  '<cmd> DapContinue<CR>',         desc = 'Debug: Start/Continue' },
    { '<leader>dsi', '<cmd> DapStepInto<CR>',         desc = 'Debug: Step Into' },
    { '<leader>dso', '<cmd> DapStepOver<CR>',         desc = 'Debug: Step Over' },
    { '<leader>dse', '<cmd> DapStepOut<CR>',          desc = 'Debug: Step Out' },
    { '<leader>b',   '<cmd> DapToggleBreakpoint<CR>', desc = 'Debug: Toggle Breakpoint' },
    -- ['<leader>B'] = {
    --   function()
    --     dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
    --   end,
    --   'Debug: Set Breakpoint',
    -- },
  },
}

M.harpoon = {
  n = {
    { '<leader>hh', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', desc = 'Harpoon file' },
    { '<leader>ha', ':lua require("harpoon.mark").add_file()<CR>',        desc = 'Harpoon file' },
    { '<leader>hn', ':lua require("harpoon.ui").nav_next()<CR>',          desc = 'Navigate to next harpooned file' },
    { '<leader>hb', ':lua require("harpoon.ui").nav_prev()<CR>',          desc = 'Navigate to previous harpooned file' },
  },
}

M.refactoring = {
  x = {
    -- Extract
    { '<leader>re', ':Refactor extract ',         desc = 'Extract' },
    --- Extract to file
    { '<leader>rf', ':Refactor extract_to_file ', desc = 'Extract to file' },
    --- Extract variable
    { '<leader>rv', ':Refactor extract_var ',     desc = 'Extract variable' },
  },
  n = {

    -- Inline variable
    { '<leader>ri',  ':Refactor inline_var',            desc = 'Inline variable' },
    -- Inline function
    { '<leader>rI',  ':Refactor inline_func',           desc = 'Inline function' },

    -- Extract block
    { '<leader>rb',  ':Refactor extract_block',         desc = 'Extract block' },
    -- Extract block to file
    { '<leader>rbf', ':Refactor extract_block_to_file', desc = 'Extract block to file' },
  },
}

M.bufferline = {
  n = {
    -- Cycle to the next buffer
    { '<Tab>',   ':BufferLineCycleNext<CR>', desc = 'Next buffer' },
    -- Cycle to the previous buffer
    { '<S-Tab>', ':BufferLineCyclePrev<CR>', desc = 'Previous buffer' },
  },
}

M.telescope = {
  n = {
    -- find
    { '<leader>ff', '<cmd> Telescope find_files <CR>',                                        desc = 'Find files' },
    { '<leader>fa', '<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>', desc = 'Find all' },
    { '<leader>fb', '<cmd> Telescope buffers <CR>',                                           desc = 'Find buffers' },
    { '<leader>fh', '<cmd> Telescope help_tags <CR>',                                         desc = 'Help page' },
    { '<leader>fo', '<cmd> Telescope oldfiles <CR>',                                          desc = 'Find oldfiles' },
    { '<leader>fz', '<cmd> Telescope current_buffer_fuzzy_find <CR>',                         desc = 'Find in current buffer' },
    { '<leader>fe', '<cmd> Telescope file_browser<CR>',                                       desc = 'Open file browser' },
    -- git
    { '<leader>cm', '<cmd> Telescope git_commits <CR>',                                       desc = 'Git commits' },
    { '<leader>gt', '<cmd> Telescope git_status <CR>',                                        desc = 'Git status' },

    -- pick a hidden term
    { '<leader>pt', '<cmd> Telescope terms <CR>',                                             desc = 'Pick hidden term' },

    --- theme swit theme switcher
    { '<leader>th', '<cmd> Telescope themes <CR>',                                            desc = 'Nvchad themes' },

    { '<leader>ma', '<cmd> Telescope marks <CR>',                                             desc = 'telescope bookmarks' },
    { '<leader>fw', '<cmd> Telescope live_grep <CR>',                                         desc = 'Live Grep' },
  },
}

M.lazygit = {
  n = {
    -- Lazygit
    { '<leader>gg', '<cmd> LazyGit <CR>', desc = 'LazyGit' },
  },
}

return M
