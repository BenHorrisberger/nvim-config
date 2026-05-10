return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { "lua", "c", "vim", "vimdoc" },
      auto_install = true,
      highlight = { enable = true },
    })
  end,
}
