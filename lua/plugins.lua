return {
    {
      "navarasu/onedark.nvim",
      priority = 1000, -- make sure to load this before all the other start plugins
      config = function()
        require('onedark').setup {
          style = 'darker'
        }
        -- Enable theme
        require('onedark').load()
      end
    },
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
     dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"}
}
