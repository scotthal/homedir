return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function ()
      local lspconfig = require("lspconfig")
      lspconfig.cssls.setup {}
      lspconfig.eslint.setup {}
      lspconfig.gopls.setup {}
      lspconfig.html.setup {}
      lspconfig.jsonls.setup {}
      lspconfig.lua_ls.setup {}
      lspconfig.rust_analyzer.setup {}
      lspconfig.ts_ls.setup {}
    end
  }
}
