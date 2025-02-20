return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- or "latte", "frappe", "macchiato"
        no_italic = true, -- Disable italics globally
        styles = {
          comments = {}, -- No italics for comments
          functions = {}, -- No italics for functions
          keywords = {}, -- No italics for keywords
          strings = {}, -- No italics for strings
          variables = {}, -- No italics for variables
        },
      })
    end,
  },

  -- Configure LazyVim to load your favourite theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
