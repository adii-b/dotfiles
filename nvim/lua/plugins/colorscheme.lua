-- return {
--   {
--     "folke/tokyonight.nvim",
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       require("tokyonight").setup({
--         style = "night",
--       })
--       -- load the colorscheme here
--       vim.cmd([[colorscheme tokyonight]])
--     end,
--   },
-- }
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- You can adjust the priority if necessary
    config = function()
      -- Set up the Catppuccin colorscheme with the "mocha" flavor
      require("catppuccin").setup({
        flavour = "mocha", -- Choose "latte", "frappe", "macchiato", or "mocha"
      })
      -- Apply the colorscheme
    end,
  },
}
