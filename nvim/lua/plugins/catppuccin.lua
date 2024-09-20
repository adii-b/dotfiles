return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, opts = { no_italic = false } },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
