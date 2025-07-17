-- Tab width
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
-- Make S-Tab behave like C-d
vim.api.nvim_set_keymap('i', '<S-Tab>', '<C-d>', { noremap = true, silent = true })

require("config.lazy")

-- Telescope bindings
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', 'fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', 'fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', 'fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Treesitter configs
require'nvim-treesitter.configs'.setup {
    ensure_installed = {"c", "lua", "vim", "markdown", "markdown_inline", "python", "javascript"},
    highlight = { enable = true },
    indent = { enable = true }
}
