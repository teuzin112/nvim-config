return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "c", "lua", "vim", "markdown", "markdown_inline",
        "python", "javascript"
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      -- optional: you can add textobjects, refactor, etc. here
    })
  end
}

