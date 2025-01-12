return {
  "nvim-treesitter/nvim-treesitter",
  name = "nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    require("nvim-treesitter.configs").setup({
      auto_install = false,
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "css",
        "html",
        "java",
        "javascript",
        "kotlin",
        "lua",
        "rust",
        "typescript",
        "vim",
        "vimdoc",
      },
      highlight = {
        enable = true,
      },
    })
  end,
}
