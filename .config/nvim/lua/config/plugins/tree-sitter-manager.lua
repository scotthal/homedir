return {
  "romus204/tree-sitter-manager.nvim",
  name = "tree-sitter-manager",
  config = function ()
    require("tree-sitter-manager").setup({
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
    })
  end,
}
