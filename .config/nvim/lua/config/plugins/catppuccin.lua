return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      --[[
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000", 
          crust = "#000000",
        },
      },
      --]]
      no_italic = true,
      show_end_of_buffer = true,
    })
  end
}

