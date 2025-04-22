return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Choose your favorite: latte, frappe, macchiato, mocha
      transparent_background = true, -- Enable/Disable transparency
      integrations = {
        nvimtree = true, -- Enable integration with nvim-tree
        treesitter = true, -- Highlight syntax with Treesitter
        lsp_trouble = true, -- Better LSP diagnostics UI
        telescope = true, -- Theming for Telescope
        cmp = true, -- Integration with nvim-cmp
      },
    })

    -- Apply the colorscheme
    vim.cmd.colorscheme("catppuccin")
  end,
}
