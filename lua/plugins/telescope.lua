return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      -- your Telescope config options here (if any)
    })

    -- KEYMAPS
    local builtin = require('telescope.builtin')
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }

    map('n', 'ff', builtin.find_files, opts)
    map('n', 'fg', builtin.live_grep, opts)
    map('n', 'fb', builtin.buffers, opts)
    map('n', 'fh', builtin.help_tags, opts)
  end
}

