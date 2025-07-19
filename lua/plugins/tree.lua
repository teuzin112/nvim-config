return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons", -- optional, for file icons
    },
    config = function()
      -- Disable netrw at the very start
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- Enable true color
      vim.opt.termguicolors = true

      -- Setup nvim-tree
      require("nvim-tree").setup()

      -- Optional keymap example
      vim.keymap.set("n", "<M-e>", ":NvimTreeToggle<CR>", { noremap = true, silent = true, desc = "Toggle file explorer" })
    end
}
